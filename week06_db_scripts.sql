USE blog

INSERT INTO user (first_name, last_name, mobile, email, password_hash, registered_at, last_login, intro, profile)
VALUES
('Phu', 'Pham', '111111111', 'phu@gmail.com', 'Phu123', NOW(), NOW(), 'Intro about Phu', 'Profile for Phu'),
('Quy', 'Nguyen', '222222222', 'quy@gmail.com', 'Quy123', NOW(), NOW(), 'Intro about Quy', 'Profile for Quy'),
('Linh', 'Tran', '333333333', 'linh@gmail.com', 'Linh123', NOW(), NOW(), 'Intro about Linh', 'Profile for Linh'),
('Tuyen', 'Le', '444444444', 'tuyen@gmail.com', 'Tuyen123', NOW(), NOW(), 'Intro about Tuyen', 'Profile for Tuyen'),
('Ngan', 'Vu', '555555555', 'ngan@gmail.com', 'Ngan123', NOW(), NOW(), 'Intro about Ngan', 'Profile for Ngan');

INSERT INTO post (author_id, title, summary, published, created_at, published_at, content)
VALUES
(1, 'Data Cleaning for Beginners', 'Learn how to clean your data and improve the quality of your analysis', true, NOW(), NOW(), 'Content for Post 1'),
(2, 'Mastering Data Visualization Techniques', 'Discover how to create effective visualizations that tell compelling stories', true, NOW(), NOW(), 'Content for Post 2'),
(3, 'Leveraging Data for Success', 'Harness the power of data to make informed decisions that drive business growth', true, NOW(), NOW(), 'Content for Post 3'),
(4, 'Responsible Data Practices', 'Explore the ethical implications of data collection, analysis, and use', true, NOW(), NOW(), 'Content for Post 4'),
(2, 'Emerging Trends and Innovations', 'Uncover the latest advancements and future directions in the field of data science', true, NOW(), NOW(), 'Content for Post 5'),
(3, 'Optimizing SQL Queries for Performance', 'Learn best practices for writing efficient SQL queries and optimizing database performance', true, NOW(), NOW(), 'Content for Post 6'),
(1, 'Introduction to Python for Data Science', 'Begin your journey into data science with Python programming basics and essentials', true, NOW(), NOW(), 'Content for Post 7'),
(3, 'Deep Learning Demystified', 'Explore the fundamentals of deep learning and its applications in various domains', true, NOW(), NOW(), 'Content for Post 8'),
(4, 'Cloud Computing for Data Scientists', 'Understand how cloud platforms can enhance data science workflows and collaboration', true, NOW(), NOW(), 'Content for Post 9'),
(5, 'Building Scalable Machine Learning Systems', 'Learn strategies for designing and implementing scalable machine learning solutions', true, NOW(), NOW(), 'Content for Post 10');



-- Thêm comment cho bài đăng 1
INSERT INTO post_comment (post_id, parent_id, title, published, created_at, published_at, content, user_id)
VALUES
(1, NULL, 'Comment 1 Title', true, NOW(), NOW(), 'This post on data cleaning is a game-changer! Thanks for the valuable insights.', 2),
(1, NULL, 'Comment 2 Title', true, NOW(), NOW(), 'I\'ve struggled with messy data for so long. Your tips are really helpful!', 3),
(1, NULL, 'Comment 3 Title', true, NOW(), NOW(), 'Looking forward to more content from you. Keep up the good work!', 4);

-- Thêm comment cho bài đăng 2
INSERT INTO post_comment (post_id, parent_id, title, published, created_at, published_at, content, user_id)
VALUES
(2, NULL, 'Comment 1 Title', true, NOW(), NOW(), 'Visualization is an art, and you\'ve mastered it. Great post!', 1),
(2, NULL, 'Comment 2 Title', true, NOW(), NOW(), 'I\'ll definitely apply these techniques to my next project.', 3),
(2, NULL, 'Comment 3 Title', true, NOW(), NOW(), 'The examples provided really make the concepts clear. Thanks!', 5);

-- Thêm comment cho bài đăng 3
INSERT INTO post_comment (post_id, parent_id, title, published, created_at, published_at, content, user_id)
VALUES
(3, NULL, 'Comment 16 Title', true, NOW(), NOW(), 'Your insights on data-driven decision making are spot-on.', 2),
(3, NULL, 'Comment 17 Title', true, NOW(), NOW(), 'I\'ve seen a positive impact on my business after implementing data-driven strategies.', 4),
(3, NULL, 'Comment 18 Title', true, NOW(), NOW(), 'Thanks for sharing your knowledge. Excited for more!', 5);

-- Thêm comment cho bài đăng 4
INSERT INTO post_comment (post_id, parent_id, title, published, created_at, published_at, content, user_id)
VALUES
(4, NULL, 'Comment 19 Title', true, NOW(), NOW(), 'Ethics in data science is a crucial topic. Well addressed in this post.', 1),
(4, NULL, 'Comment 20 Title', true, NOW(), NOW(), 'This post opened my eyes to the ethical considerations in our field.', 3),
(4, NULL, 'Comment 21 Title', true, NOW(), NOW(), 'Looking forward to more discussions on responsible data practices.', 5);

-- Thêm comment cho bài đăng 5
INSERT INTO post_comment (post_id, parent_id, title, published, created_at, published_at, content, user_id)
VALUES
(5, NULL, 'Comment 22 Title', true, NOW(), NOW(), 'Emerging trends are exciting. Your post highlighted some key areas.', 2),
(5, NULL, 'Comment 23 Title', true, NOW(), NOW(), 'I\'m eager to explore the future of data science. Thanks for the overview!', 4),
(5, NULL, 'Comment 24 Title', true, NOW(), NOW(), 'Great post! Cloud computing is indeed transforming the landscape.', 5);

-- Thêm comment cho bài đăng 6
INSERT INTO post_comment (post_id, parent_id, title, published, created_at, published_at, content, user_id)
VALUES
(6, NULL, 'Comment 25 Title', true, NOW(), NOW(), 'SQL optimization is a skill every data scientist should have. Thanks for the guidance!', 1),
(6, NULL, 'Comment 26 Title', true, NOW(), NOW(), 'Python has been my go-to language. Your post resonates with my journey.', 3),
(6, NULL, 'Comment 27 Title', true, NOW(), NOW(), 'Looking forward to more insights on optimizing SQL queries.', 5);


INSERT INTO post_comment (post_id, parent_id, title, published, created_at, published_at, content, user_id)
VALUES
(7, NULL, 'Comment 25 Title', true, NOW(), NOW(), 'SQL optimization is a skill every data scientist should have. Thanks for the guidance!', 1),
(7, NULL, 'Comment 26 Title', true, NOW(), NOW(), 'Python has been my go-to language. Your post resonates with my journey.', 3),
(7, NULL, 'Comment 27 Title', true, NOW(), NOW(), 'Looking forward to more insights on optimizing SQL queries.', 5);


INSERT INTO post_comment (post_id, parent_id, title, published, created_at, published_at, content, user_id)
VALUES
(8, NULL, 'Comment 22 Title', true, NOW(), NOW(), 'Emerging trends are exciting. Your post highlighted some key areas.', 2),
(8, NULL, 'Comment 23 Title', true, NOW(), NOW(), 'I\'m eager to explore the future of data science. Thanks for the overview!', 4),
(8, NULL, 'Comment 24 Title', true, NOW(), NOW(), 'Great post! Cloud computing is indeed transforming the landscape.', 5);

INSERT INTO post_comment (post_id, parent_id, title, published, created_at, published_at, content, user_id)
VALUES
(9, NULL, 'Comment 22 Title', true, NOW(), NOW(), 'Emerging trends are exciting. Your post highlighted some key areas.', 2),
(9, NULL, 'Comment 23 Title', true, NOW(), NOW(), 'I\'m eager to explore the future of data science. Thanks for the overview!', 4),
(9, NULL, 'Comment 24 Title', true, NOW(), NOW(), 'Great post! Cloud computing is indeed transforming the landscape.', 5);


INSERT INTO post_comment (post_id, parent_id, title, published, created_at, published_at, content, user_id)
VALUES
(10, NULL, 'Comment 22 Title', true, NOW(), NOW(), 'Emerging trends are exciting. Your post highlighted some key areas.', 2),
(10, NULL, 'Comment 23 Title', true, NOW(), NOW(), 'I\'m eager to explore the future of data science. Thanks for the overview!', 4),
(10, NULL, 'Comment 24 Title', true, NOW(), NOW(), 'Great post! Cloud computing is indeed transforming the landscape.', 5);







