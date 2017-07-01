DROP DATABASE IF EXISTS db_blog;
CREATE DATABASE db_blog;

DROP TABLE IF EXISTS db_blog.user;
CREATE TABLE db_blog.user(
  id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'ID PK',
  email VARCHAR(255) NOT NULL UNIQUE COMMENT '邮箱',
  password VARCHAR(255) NOT NULL COMMENT '密码',
  signUPIp VARCHAR(255) NOT NULL COMMENT '注册时IP地址',
  lastIp VARCHAR(255) NOT NULL COMMENT '最后一次登录时IP',
  signUpTime DATETIME NOT NULL DEFAULT now() COMMENT '用户注册时间',
  lastTime DATETIME NOT NULL DEFAULT now() COMMENT '最后一次登录时间'
)COMMENT '用户表';

DROP TABLE IF EXISTS db_blog.publish;
CREATE TABLE db_blog.publish(
  id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'ID PK',
  title VARCHAR(255) NOT NULL COMMENT '标题',
  blog_content VARCHAR(255) NOT NULL COMMENT '博文内容容',
  publish_time DATETIME NOT NULL DEFAULT now() COMMENT'发布时间',
  userId INT COMMENT 'Fk 用户 ID'
)COMMENT '发表博文表';

DROP TABLE IF EXISTS db_blog.comment;
CREATE TABLE db_blog.comment(
  id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'ID PK',
  comment_content VARCHAR(255) NOT NULL COMMENT '评论内容',
  comment_time DATETIME NOT NULL DEFAULT now() COMMENT '评论时间',
  userId INT COMMENT 'FK 用户 ID',
  blogId INT COMMENT 'FK 发布博文 ID',
  commentId INT COMMENT 'FK 评论 ID '
)COMMENT '评论博文表';

DROP TABLE IF EXISTS db_blog.blog_comment;
CREATE TABLE db_blog.blog_comment(
  publishId INT COMMENT 'PK FK',
  commentId INT COMMENT 'PK FK'
)COMMENT '博文-评论表';

ALTER TABLE db_blog.publish
  ADD CONSTRAINT
publish_fk_userId
FOREIGN KEY (userId)
  REFERENCES db_blog.user(id);

ALTER TABLE db_blog.comment
  ADD CONSTRAINT
comment_fk_userId
FOREIGN KEY (userId)
  REFERENCES db_blog.user(id);

ALTER TABLE db_blog.comment
  ADD CONSTRAINT
comment_fk_blogId
FOREIGN KEY (blogId)
  REFERENCES db_blog.publish(id);

ALTER TABLE db_blog.comment
  ADD CONSTRAINT
comment_fk_commentId
FOREIGN KEY (commentId)
  REFERENCES db_blog.comment(id);

ALTER TABLE db_blog.blog_comment
  ADD CONSTRAINT
  blog_comment_fk_publishId
FOREIGN KEY (publishId)
  REFERENCES db_blog.publish(id);

ALTER TABLE db_blog.blog_comment
  ADD CONSTRAINT
  blog_comment_fk_commentId
FOREIGN KEY (commentId)
  REFERENCES db_blog.comment(id);

SELECT *
FROM db_blog.user;

SELECT *
FROM db_blog.publish;

