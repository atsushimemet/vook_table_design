| カラム名  | 日本語名 | 制約                                                                                           | データ型   |
| --------- | -------- | ---------------------------------------------------------------------------------------------- | ---------- |
| ages_id   | 年代番号 | PK, FOREIGN KEY REFERENCES knowledges(knowledge_id), NOT NULL, UNIQUE, NOT NULL, AUTOINCREMENT | INT        |
| ages_name | 年代名   | NOT NULL                                                                                       | VARCHAR(7) |
