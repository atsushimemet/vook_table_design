| カラム名  | 日本語名     | 制約                                                                                 | データ型     |
| --------- | ------------ | ------------------------------------------------------------------------------------ | ------------ |
| item_id   | アイテム番号 | PK, FOREIGN KEY REFERENCES knowledges(knowledge_id), UNIQUE, NOT NULL, AUTOINCREMENT | INT          |
| item_name | アイテム名   | NOT NULL                                                                             | VARCHAR(100) |
