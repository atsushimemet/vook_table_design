| カラム名     | データ型     | 制約                                          | 説明                      |
| ------------ | ------------ | --------------------------------------------- | ------------------------- |
| product_id   | INT          | PRIMARY KEY, UNIQUE, NOT NULL, AUTO_INCREMENT | 商品 ID（主キー）         |
| product_name | VARCHAR(100) | UNIQUE, NOT NULL                              | 商品の名称                |
| platform_id  | INT          | NOT NULL                                      | 販売プラットフォームの ID |
