CREATE TABLE journal (
    journal_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    release_year DATE
);

CREATE TABLE articles (
    article_id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    published_date DATE,
    content TEXT,
    journal_id INT,
    FOREIGN KEY (journal_id) REFERENCES journal(journal_id)
);

CREATE TABLE photos (
    photo_id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    article_id INT,
    FOREIGN KEY (article_id) REFERENCES articles(article_id)
);
