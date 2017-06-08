DROP TABLE IF EXISTS user_session;

CREATE TABLE user_session (
  id INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1, INCREMENT BY 1) PRIMARY KEY,
  username VARCHAR(8) NOT NULL UNIQUE,
  password VARCHAR(16) NOT NULL,
  last_accessed_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
);

insert into user_session(username, password) values('jordan', 'password')
