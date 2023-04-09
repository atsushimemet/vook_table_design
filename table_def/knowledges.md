| カラム名                | 日本語名     | 制約                               | データ型                             |
| ----------------------- | ------------ | ---------------------------------- | ------------------------------------ |
| knowledge_id            | 知識番号     | PK, UNIQUE, NOT NULL               | INT                                  |
| user_id                 | ユーザー番号 | FK, UNIQUE, NOT NULL AUTOINCREMENT | INT                                  |
| knowledge_category_name | 知識分類     | NOT NULL                           | ENUM('ブランド', 'アイテム', '年代') |
| knowledge_name          | 知識         | NOT NULL                           | VARCHAR(100)                         |
