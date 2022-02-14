/*1*/
CREATE TABLE professors(
    ssn INTEGER PRIMARY KEY
);
CREATE TABLE courses(
    courseid INTEGER PRIMARY KEY
);
CREATE TABLE teaches(
    courseid,
    ssn,
    semesterid,
    FOREIGN KEY (courseid) REFERENCES courses,
    FOREIGN KEY (ssn) REFERENCES professors,
);

/*3*/
CREATE TABLE professors(
    ssn INTEGER PRIMARY KEY
);
CREATE TABLE courses(
    courseid INTEGER PRIMARY KEY
);
CREATE TABLE teaches(
    courseid,
    ssn UNIQUE,
    semesterid,
    FOREIGN KEY (courseid) REFERENCES courses,
    FOREIGN KEY (ssn) REFERENCES professors
);

/*5*/
CREATE TABLE professors(
    ssn INTEGER PRIMARY KEY
);
CREATE TABLE courses(
    courseid INTEGER PRIMARY KEY
);
CREATE TABLE teaches(
    courseid,
    ssn UNIQUE,
    semesterid,
    FOREIGN KEY (courseid) REFERENCES courses,
    FOREIGN KEY (ssn) REFERENCES professors
);

/*5*/
CREATE TABLE professors(
    ssn INTEGER PRIMARY KEY
);
CREATE TABLE courses(
    courseid INTEGER PRIMARY KEY
);
CREATE TABLE teaches(
    courseid,
    ssn UNIQUE,
    semesterid,
    FOREIGN KEY (courseid) REFERENCES courses,
    FOREIGN KEY (ssn) REFERENCES professors
);

/*6*/
CREATE TABLE professors(
    ssn INTEGER PRIMARY KEY
);
CREATE TABLE courses(
    courseid INTEGER PRIMARY KEY
);
CREATE TABLE teaches(
    courseid,
    ssn UNIQUE,
    secondary_teacher,
    semesterid,
    FOREIGN KEY (courseid) REFERENCES courses,
    FOREIGN KEY (ssn) REFERENCES professors
);