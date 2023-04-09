| カラム名      | データ型                  | 制約                                              | 説明                |
| ------------- | ------------------------- | ------------------------------------------------- | ------------------- |
| product_id    | INT                       | PRIMARY KEY, UNIQUE, NOT NULL, AUTO_INCREMENT     | 商品 ID（主キー）   |
| product_name  | VARCHAR(100)              | UNIQUE, NOT NULL                                  | 商品名              |
| platform_id   | INT                       | DEFAULT 2                                         | プラットフォーム ID |
| brand_id      | INT                       | FOREIGN KEY REFERENCES brands(brand_id), NOT NULL | ブランド ID         |
| item_id       | INT                       | FOREIGN KEY REFERENCES items(item_id), NOT NULL   | アイテム ID         |
| ages_id       | INT                       | FOREIGN KEY REFERENCES ages(ages_id), NOT NULL    | 年代 ID             |
| price         | INT                       | NOT NULL                                          | 価格                |
| info_get_date | DATETIME                  | NOT NULL                                          | 情報取得日時        |
| status        | ENUM("S","A","B","C","D") |                                                   | 状態                |
