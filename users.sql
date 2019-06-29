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
                                    FROM users;