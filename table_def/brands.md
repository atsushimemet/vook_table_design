| カラム名   | 日本語名     | 制約                                                                                 | データ型     |
| ---------- | ------------ | ------------------------------------------------------------------------------------ | ------------ |
| brand_id   | ブランド番号 | PK, FOREIGN KEY REFERENCES knowledges(knowledge_id), UNIQUE, NOT NULL, AUTOINCREMENT | INT          |
| brand_name | ブランド名   | NOT NULL                                                                             | VARCHAR(100) |
