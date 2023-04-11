CREATE TABLE ages (
    ages_id INT PRIMARY KEY AUTO_INCREMENT,
    ages_name VARCHAR(7) NOT NULL UNIQUE
);

CREATE TABLE brands (
    brand_id INT PRIMARY KEY AUTO_INCREMENT,
    brand_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE items (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    item_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE knowledge (
    knowledge_id INT PRIMARY KEY AUTO_INCREMENT,
    knowledge_name VARCHAR(100) NOT NULL,
    user_id INT NOT NULL,
    ages_id INT NOT NULL,
    brand_id INT NOT NULL,
    item_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (ages_id) REFERENCES ages(ages_id),
    FOREIGN KEY (brand_id) REFERENCES brands(brand_id),
    FOREIGN KEY (item_id) REFERENCES items(item_id)
);

CREATE TABLE articles (
    article_id INT PRIMARY KEY AUTO_INCREMENT,
    article_name VARCHAR(255) NOT NULL UNIQUE,
    body TEXT,
    user_id INT NOT NULL,
    publish_at DATETIME,
    last_update DATETIME,
    summary VARCHAR(140),
    thumbnail_url VARCHAR(255),
    tags VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE platforms (
    platform_id INT PRIMARY KEY AUTO_INCREMENT,
    platform_name VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE posts (
    post_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    post_image BLOB NOT NULL,
    post_date DATETIME NOT NULL,
    post_description VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL UNIQUE,
    platform_id INT NOT NULL,
    ages_id INT NOT NULL,
    brand_id INT NOT NULL,
    item_id INT NOT NULL,
    price INT NOT NULL,
    info_get_date DATETIME NOT NULL,
    status ENUM('S', 'A', 'B', 'C', 'D'),
    FOREIGN KEY (platform_id) REFERENCES platforms(platform_id),
    FOREIGN KEY (ages_id) REFERENCES ages(ages_id),
    FOREIGN KEY (brand_id) REFERENCES brands(brand_id),
    FOREIGN KEY (item_id) REFERENCES items(item_id)
);

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(30) NOT NULL,
    icon_url VARCHAR(255),
    admin BOOLEAN NOT NULL,
    introduction VARCHAR(140)
);
