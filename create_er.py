import pandas as pd
import pydot

if __name__ == "__main__":
    # テーブル定義の読み込み
    table_defs = {
        "ages": pd.read_csv("./table_def/ages.md", sep="|"),
    }

    # エンティティノードの作成
    nodes = {}
    for table_name, table_def in table_defs.items():
        node = pydot.Node(table_name, shape="rectangle", style="filled", fillcolor="#E0E0E0")
        label = "\n".join([f"<{c[0]}> {c[3]}" for _, c in table_def.iterrows()])
        node.set_label(label)
        nodes[table_name] = node

    # リレーションエッジの作成
    edges = []
    for table_name, table_def in table_defs.items():
        for _, c in table_def.iterrows():
            if c[2] == "FOREIGN KEY":
                source = nodes[table_name]
                target = nodes[c["ref_table"]]
                edge = pydot.Edge(source, target, label=c["ref_col"], fontname="Helvetica", fontsize=9)
                edges.append(edge)

    # グラフの描画
    graph = pydot.Graph()
    graph.set_rankdir("TB")
    for node in nodes.values():
        graph.add_node(node)
    for edge in edges:
        graph.add_edge(edge)
    dot_data = graph.to_string()
    (graph,) = pydot.graph_from_dot_data(dot_data)
    graph.write("er.png", format="png")
