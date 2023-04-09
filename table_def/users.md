| カラム名     | 日本語名     | 制約                                | データ型      |
| ------------ | ------------ | ----------------------------------- | ------------- |
| user_id      | ユーザー番号 | PK, UNIQUE, NOT NULL, AUTOINCREMENT | INT           |
| user_name    | ユーザー名   | NOT NULL                            | VARCHAR(30)   |
| icon_url     | アイコン URL |                                     | VARCHAR(2048) |
| admin        | 管理者フラグ | NOT NULL                            | BOOLEAN       |
| introduction | 自己紹介     |                                     | TEXT          |
