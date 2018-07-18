DROP TABLE users CASCADE;
DROP TABLE institution CASCADE;
DROP TABLE courses CASCADE;
DROP TABLE thought CASCADE;



CREATE TABLE institution(
   institution_id SERIAL PRIMARY KEY,
   name VARCHAR(255) NOT NULL,
   members INTEGER NOT NULL,
   date_created DATE NOT NULL);

CREATE TABLE users(
   user_id SERIAL PRIMARY KEY,
   first_name VARCHAR(255) NOT NULL,
   last_name VARCHAR(255) NOT NULL,
   number_of_thoughts INTEGER NOT NULL,
   date_joined DATE NOT NULL,
   occupation VARCHAR(255),
   user_password VARCHAR(255) NOT NULL,
   institution_id INTEGER NOT NULL,
   FOREIGN KEY(institution_id)
   REFERENCES institution(institution_id)
   ON DELETE CASCADE);
    
CREATE TABLE courses(
   course_id SERIAL PRIMARY KEY,
   code VARCHAR(255) NOT NULL,
   title VARCHAR(255) NOT NULL,
   institution_id INTEGER NOT NULL,
   FOREIGN KEY(institution_id)
   REFERENCES institution(institution_id)
   ON DELETE CASCADE);

CREATE TABLE thought(
   text VARCHAR(255) NOT NULL,
   date_published DATE NOT NULL,
   type VARCHAR(255) NOT NULL,
   votes INTEGER NOT NULL,
   user_id INTEGER NOT NULL,
   FOREIGN KEY(user_id)
   REFERENCES users(user_id)
   ON DELETE CASCADE);





