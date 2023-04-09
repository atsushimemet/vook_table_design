| カラム名    | データ型     | 制約                                            | 説明                               |
| ----------- | ------------ | ----------------------------------------------- | ---------------------------------- |
| article_id  | INT          | PRIMARY KEY, NOT NULL, AUTO_INCREMENT           | 記事 ID                            |
| title       | VARCHAR(255) | NOT NULL                                        | 記事のタイトル                     |
| body        | TEXT         |                                                 | 記事の本文                         |
| user_id     | INT          | FOREIGN KEY REFERENCES users(user_id), NOT NULL | ユーザー ID                        |
| publish_at  | DATETIME     |                                                 | 公開日                             |
| last_update | DATETIME     |                                                 | 最終更新日                         |
| summary     | TEXT         |                                                 | 記事の概要                         |
| thumbnail   | VARCHAR(255) |                                                 | サムネイル画像の URL               |
| tags        | VARCHAR(255) |                                                 | 記事に関連するタグ（カンマ区切り） |
