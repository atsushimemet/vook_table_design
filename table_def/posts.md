| カラム名         | データ型     | 制約                                  | 説明              |
| ---------------- | ------------ | ------------------------------------- | ----------------- |
| post_id          | INT          | PRIMARY KEY, AUTO_INCREMENT           | 投稿 ID（主キー） |
| user_id          | INT          | FOREIGN KEY REFERENCES users(user_id) | ユーザー ID       |
| post_image       | BLOB         | NOT NULL                              | 投稿画像          |
| post_date        | DATETIME     | NOT NULL                              | 投稿日時          |
| post_description | VARCHAR(255) |                                       | 投稿の説明        |
