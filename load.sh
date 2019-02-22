sudo -i -u postgres
createdb uni
psql -d uni

CREATE UNLOGGED TABLE Degrees(DegreeId int PRIMARY KEY, Dept varchar(50), DegreeDescription varchar(200), TotalECTS int);

CREATE UNLOGGED TABLE Students(StudentId int PRIMARY KEY, StudentName varchar(50), Address varchar(200), BirthyearStudent int, Gender char);

CREATE UNLOGGED TABLE StudentRegistrationsToDegrees(StudentRegistrationId int PRIMARY KEY, StudentId int REFERENCES Students(StudentId), DegreeId int REFERENCES Degrees(DegreeId), RegistrationYear int);

CREATE UNLOGGED TABLE Teachers(TeacherId int, TeacherName varchar(50), Address varchar(200), BirthYearTeacher int, Gender char);

CREATE UNLOGGED TABLE Courses(CourseId int, CourseName varchar(50), CourseDescription varchar(200), DegreeId int);

CREATE UNLOGGED TABLE CourseOffers(CourseOfferId int, CourseId int, Year int, Quartile int);

CREATE UNLOGGED TABLE TeacherAssignmentsToCourses(CourseOfferId int, TeacherId int);

CREATE UNLOGGED TABLE StudentAssistants(CourseOfferId int, StudentRegistrationId int);

CREATE UNLOGGED TABLE CourseRegistrations(CourseOfferId int, StudentRegistrationId int, Grade int);

# Copy information to tables:
COPY Degrees(DegreeId, Dept, DegreeDescription, TotalECTS) FROM '/home/student/tables-500/Degrees.table' DELIMITER ',' CSV HEADER;

COPY Students(StudentId, StudentName, Address, BirthYearStudent, Gender) FROM '/home/student/tables-500/Students.table' DELIMITER ',' CSV HEADER;

COPY StudentRegistrationsToDegrees(StudentRegistrationId, StudentId, DegreeId, RegistrationYear) FROM '/home/student/tables-500/StudentRegistrationsToDegrees.table' DELIMITER ',' CSV HEADER;

COPY Teachers(TeacherId, TeacherName, Address, BirthYearTeacher, Gender) FROM '/home/student/tables-500/Teachers.table' DELIMITER ',' CSV HEADER;

COPY Courses(CourseId, CourseName, CourseDescription, DegreeId) FROM '/home/student/tables-500/Courses.table' DELIMITER ',' CSV HEADER;

COPY CourseOffers(CourseOfferId, CourseId, Year, Quartile) FROM '/home/student/tables-500/CourseOffers.table' DELIMITER ',' CSV HEADER;

COPY TeacherAssignmentsToCourses(CourseOfferId, TeacherId) FROM '/home/student/tables-500/TeacherAssignmentsToCourses.table' DELIMITER ',' CSV HEADER;

COPY StudentAssistants(CourseOfferId, StudentRegistrationId) FROM '/home/student/tables-500/StudentAssistants.table' DELIMITER ',' CSV HEADER;

COPY CourseRegistrations(CourseOfferId, StudentRegistrationId, Grade) FROM '/home/student/tables-500/CourseRegistrations.table' DELIMITER ',' CSV HEADER;

