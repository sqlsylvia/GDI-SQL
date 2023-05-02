-- Adapted from https://github.com/sheezaaziz/Instagram-Database-Clone/blob/main/schema.sql
-- Sample Instagram Database for teaching SQL

.headers on  
.mode columns 


CREATE TABLE Users (
    id INTEGER  PRIMARY KEY AUTOINCREMENT ,
    username VARCHAR(255) UNIQUE ,
    created_at TIMESTAMP 
);

CREATE TABLE photos (
    id INTEGER  PRIMARY KEY AUTOINCREMENT ,
    image_url VARCHAR(255) NOT NULL,
    user_id INTEGER NOT NULL,
    created_at TIMESTAMP ,
    FOREIGN KEY(user_id) REFERENCES Users(id)
);

CREATE TABLE comments (
    id INTEGER  PRIMARY KEY AUTOINCREMENT ,
    comment_text VARCHAR(255) NOT NULL,
    photo_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    created_at TIMESTAMP ,
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    FOREIGN KEY(user_id) REFERENCES Users(id)
);

CREATE TABLE likes (
    user_id INTEGER NOT NULL,
    photo_id INTEGER NOT NULL,
    created_at TIMESTAMP ,
    FOREIGN KEY(user_id) REFERENCES Users(id),
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    PRIMARY KEY(user_id, photo_id) -- does not let a user like the same photo more than once
);

CREATE TABLE follows (
    follower_id INTEGER NOT NULL,
    followee_id INTEGER NOT NULL,
    created_at TIMESTAMP ,
    FOREIGN KEY(follower_id) REFERENCES Users(id),
    FOREIGN KEY(followee_id) REFERENCES Users(id),
    PRIMARY KEY(follower_id, followee_id)
);

CREATE TABLE tags (
  id INTEGER  PRIMARY KEY AUTOINCREMENT, 
  tag_name VARCHAR(255) UNIQUE,
  created_at TIMESTAMP 
);

CREATE TABLE photo_tags (
    photo_id INTEGER NOT NULL,
    tag_id INTEGER NOT NULL,
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    FOREIGN KEY(tag_id) REFERENCES tags(id),
    PRIMARY KEY(photo_id, tag_id)
);