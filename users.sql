DROP DATABASE IF EXISTS coder_kiosk_db;
CREATE DATABASE coder_kiosk_db;

USE coder_kiosk_db;

CREATE TABLE users
(
    user_id INT NOT NULL
    AUTO_INCREMENT PRIMARY KEY,
    f_name VARCHAR
    (100) NOT NULL,
    l_name VARCHAR
    (100) NOT NULL,
    email VARCHAR
    (100) NOT NULL,
    id_type VARCHAR
    (50) NOT NULL,
    dob INT NOT NULL,
    sex VARCHAR
    (20) NOT NULL
);

    CREATE TABLE storage_text
    (
        text_id INT NOT NULL
        AUTO_INCREMENT PRIMARY KEY,
        text_content VARCHAR
        (10000) NOT NULL,
        text_location VARCHAR
        (100) NOT NULL
    );
        CREATE TABLE storage_audio
        (
            audio_id INT NOT NULL
            AUTO_INCREMENT PRIMARY KEY,
        audio_content VARCHAR NOT NULL,
        audio_location VARCHAR
            (100) NOT NULL
    );
            CREATE TABLE storage_video
            (
                video_id INT NOT NULL
                AUTO_INCREMENT PRIMARY KEY,
        video_content VARCHAR NOT NULL,
        video_location VARCHAR
                (100) NOT NULL
    );

                CREATE TABLE emergency_contact
                (
                    emergency_f_name VARCHAR(100) NOT NULL,
                    emergency_l_name VARCHAR(100) NOT NULL,
                    emergency_phone INT(10) NOT NULL,
                    emergency_email VARCHAR(100) NOT NULL
                );

                CREATE TABLE subjects
                (
                    subject_id INT NOT NULL
                    AUTO_INCREMENT PRIMARY KEY,
    subject_name VARCHAR
                    (50) NOT NULL
);

                    CREATE TABLE assignments
                    (
                        assignment_id INT NOT NULL
                        AUTO_INCREMENT PRIMARY KEY,
    assignment_name VARCHAR
                        (100) NOT NULL,
    assignment_grade INT
                        (3) NOT NULL
);

                        CREATE TABLE quizzes
                        (
                            quiz_id INT NOT NULL
                            AUTO_INCREMENT PRIMARY KEY,
    quiz_name VARCHAR
                            (100) NOT NULL
);

                            CREATE TABLE quiz_questions
                            (
                                question_id INT NOT NULL
                                AUTO_INCREMENT PRIMARY KEY,
    question VARCHAR
                                (500) NOT NULL,
    option_a BOOLEAN,
    option_b BOOLEAN,
    option_c BOOLEAN,
    option_d BOOLEAN
);

                                CREATE TABLE grades
                                (
                                    user_id INT NOT NULL,
                                    subject_id INT NOT NULL,
                                    assignment_grade INT NOT NULL,
                                    avg_grade INT(3) NOT NULL

                                );

                                CREATE TABLE projects
                                (
                                    project_id INT NOT NULL
                                    AUTO_INCREMENT PRIMARY KEY,
                                    project_name VARCHAR
                                    (100) NOT NULL,
    team_users VARCHAR
                                    (100) NOT NULL
);

                                    CREATE TABLE teams
                                    (
                                        member_1 INT(20) NOT NULL,
                                        member_2 INT(20),
                                        member_3 INT(20),
                                        member_4 INT(20),
                                        member_5 INT(20)
                                    );

                                    INSERT INTO users
                                        (f_name, l_name, email, id_type, dob, sex)
                                    VALUES
                                        ("Jonny", "O", "widespread.main@gmail.com", "student", 10201986, "male");
                                    INSERT INTO users
                                        (f_name, l_name, email, id_type, dob, sex)
                                    VALUES
                                        ("Mike", "Corey", "coreyh@gmail.com", "student", 01081989, "male");
                                    INSERT INTO users
                                        (f_name, l_name, email, id_type, dob, sex)
                                    VALUES
                                        ("Stephany", "Nolan", "steph.main@gmail.com", "student", 05051988, "female");
                                    INSERT INTO users
                                        (f_name, l_name, email, id_type, dob, sex)
                                    VALUES
                                        ("Mark", "Techson", "codegod@gmail.com", "teacher", 01010001, "male");
                                    INSERT INTO users
                                        (f_name, l_name, email, id_type, dob, sex)
                                    VALUES
                                        ("Rox", "Yo-Socks", "roxy@gmail.com", "aide", 08081986, "female");
                                    INSERT INTO users
                                        (f_name, l_name, email, id_type, dob, sex)
                                    VALUES
                                        ("Daniel", "Santos", "danny@gmail.com", "aide", 10201984, "male");


                                    SELECT *
                                    FROM users
/*
----------------------------------------------------------
*/
DROP DATABASE IF EXISTS coder_kiosk_db;
CREATE DATABASE coder_kiosk_db;

USE coder_kiosk_db;

CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    f_name VARCHAR(100) NOT NULL,
    l_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    passphrase VARCHAR(255) NOT NULL,
    age INT(3) NOT NULL,
    sex VARCHAR(1) NOT NULL
);



CREATE TABLE notes
(
   note_id INT NOT NULL auto_increment PRIMARY KEY,
   sub VARCHAR(225) NOT NULL,
   title VARCHAR(500) NOT NULL,
   body VARCHAR(500) NOT NULL,
   tags VARCHAR(225) NOT NULL,
   image VARCHAR(225) NOT NULL

);



CREATE TABLE activities(
    activity_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    week VARCHAR(50),
    activity_name VARCHAR(100) NOT NULL,
    activity_description VARCHAR(255) NOT NULL,
    activity_data VARCHAR(500) NOT NULL
);
CREATE TABLE homework(
    homework_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    homework_name VARCHAR(100) NOT NULL,
    homework_description VARCHAR(255) NOT NULL,
    homework_data VARCHAR(500) NOT NULL
);
CREATE TABLE projects(
    project_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    project_description VARCHAR(255) NOT NULL,
    project_data VARCHAR(500) NOT NULL
);

INSERT INTO notes(sub, title, body, tags, image)  VALUES ("HTML","What is HTML?","HTML is a webpage","HTML","blahblahblah");
INSERT INTO notes(sub, title, body, tags, image)  VALUES ("HTML","What is HTML?","HTML is a webpage","HTML","blahblahblah");
INSERT INTO notes(sub, title, body, tags, image)  VALUES ("HTML","What is HTML?","HTML is a webpage","HTML","blahblahblah");
INSERT INTO notes(sub, title, body, tags, image)  VALUES ("HTML","What is HTML?","HTML is a webpage","HTML","blahblahblah");
INSERT INTO notes(sub, title, body, tags, image)  VALUES ("HTML","What is HTML?","HTML is a webpage","HTML","blahblahblah");
INSERT INTO notes(sub, title, body, tags, image)  VALUES ("HTML","What is HTML?","HTML is a webpage","HTML","blahblahblah");
INSERT INTO notes(sub, title, body, tags, image)  VALUES ("HTML","What is HTML?","HTML is a webpage","HTML","blahblahblah");

INSERT INTO users(f_name, l_name, email, passphrase, age, sex) VALUES ("Jonathan","Olson","widespread.main@gmail.com","DontBeSoMean$#@!","32","M");
INSERT INTO users(f_name, l_name, email, passphrase, age, sex) VALUES ("Mike","Corey","corey@gmail.com","coreyMIKE3245","30","M");
INSERT INTO users(f_name, l_name, email, passphrase, age, sex) VALUES ("Stephanie","Nolan","steph@gmail.com","ItsStephyYall!@#$%^","35","F");
INSERT INTO users(f_name, l_name, email, passphrase, age, sex) VALUES ("Mark","Techson","nunya@mail.com","root","38","M");
INSERT INTO users(f_name, l_name, email, passphrase, age, sex) VALUES ("Roxy","Milea","roxy@gmail.com","ShesAJudge!?","28","F");
INSERT INTO users(f_name, l_name, email, passphrase, age, sex) VALUES ("Daniel","Santos","sonosman@yahoo.com","CPlus+IsEasy","30","M");
INSERT INTO users(f_name, l_name, email, passphrase, age, sex) VALUES ("Dee","FG","DeeFG@outlook.com","password","28","F");



INSERT INTO activities(week, activity_name, activity_description, activity_data) VALUES ("1","HTML Introduction","Learn the Very Basics of HTML","This will be the lesson for learning the very basics of HTML");

INSERT INTO homework(homework_name, homework_description, homework_data) VALUES ("Portfolio","Build your Portfolio","Build a working portfolio website for all of your future assignments");

INSERT INTO projects(project_name, project_description, project_data) VALUES ("CoCo","An app to help understand","Webpage to be displayed");




SELECT * FROM users JOIN notes JOIN activities JOIN homework JOIN projects;