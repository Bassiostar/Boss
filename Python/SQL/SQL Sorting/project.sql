CREATE TABLE hacker_news (
    title VARCHAR(255),
    author VARCHAR(255),
    score INT
);


INSERT INTO hacker_news (title, author, score) VALUES
('The Future of AI is Here', 'ai_expert', 250),
('How to Learn SQL in 7 Days', 'data_guru', 180),
('My First Experience with Python', 'newbie_coder', 45),
('A Deep Dive into Machine Learning Models', 'ml_pro', 320),
('The Best Productivity Apps of 2024', 'tech_reviewer', 90),
('Understanding Data Filtering and Aggregation', 'sql_master', 510),
('Why JavaScript is Still King', 'webdev_legend', 110),
('The Story of the Internet: From ARPANET to Today', 'history_buff', 15),
('A Guide to Cloud Computing', 'cloud_architect', 285),
('Essential Tips for Remote Work', 'digital_nomad', 65);

SELECT title, author, score
FROM hacker_news
WHERE score > 200
ORDER BY score DESC;