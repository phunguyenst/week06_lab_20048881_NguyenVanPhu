USE blog

-- Insert 5 users
INSERT INTO user (first_name, last_name, mobile, email, password_hash, registered_at, last_login, intro, profile)
VALUES
('John', 'Doe', '123456789', 'john@example.com', 'password1', NOW(), NOW(), 'Intro about John', 'Profile for John'),
('Jane', 'Doe', '987654321', 'jane@example.com', 'password2', NOW(), NOW(), 'Intro about Jane', 'Profile for Jane'),
('Bob', 'Smith', '555555555', 'bob@example.com', 'password3', NOW(), NOW(), 'Intro about Bob', 'Profile for Bob'),
('Alice', 'Johnson', '777777777', 'alice@example.com', 'password4', NOW(), NOW(), 'Intro about Alice', 'Profile for Alice'),
('Eve', 'Williams', '999999999', 'eve@example.com', 'password5', NOW(), NOW(), 'Intro about Eve', 'Profile for Eve');

-- Insert 5 posts
INSERT INTO post (author_id, title, meta_title, summary, published, created_at, published_at, content)
VALUES
(1, 'Post 1 Title', 'Meta Title for Post 1', 'Summary for Post 1', true, NOW(), NOW(), 'Content for Post 1'),
(2, 'Post 2 Title', 'Meta Title for Post 2', 'Summary for Post 2', true, NOW(), NOW(), 'Content for Post 2'),
(3, 'Post 3 Title', 'Meta Title for Post 3', 'Summary for Post 3', true, NOW(), NOW(), 'Content for Post 3'),
(4, 'Post 4 Title', 'Meta Title for Post 4', 'Summary for Post 4', true, NOW(), NOW(), 'Content for Post 4'),
(5, 'Post 5 Title', 'Meta Title for Post 5', 'Summary for Post 5', true, NOW(), NOW(), 'Content for Post 5');

-- Insert 5 comments
INSERT INTO post_comment (post_id, parent_id, title, published, created_at, published_at, content, user_id)
VALUES
(1, NULL, 'Comment 1 Title', true, NOW(), NOW(), 'Content for Comment 1', 3),
(1, 1, 'Reply to Comment 1', true, NOW(), NOW(), 'Reply Content 1', 4),
(2, NULL, 'Comment 2 Title', true, NOW(), NOW(), 'Content for Comment 2', 2),
(3, NULL, 'Comment 3 Title', true, NOW(), NOW(), 'Content for Comment 3', 5),
(4, NULL, 'Comment 4 Title', true, NOW(), NOW(), 'Content for Comment 4', 1);
