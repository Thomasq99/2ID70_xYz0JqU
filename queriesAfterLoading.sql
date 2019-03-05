SELECT CO.CourseOfferId, CO.CourseId, CO.Year, CO.Quartile, C.CourseName, C.CourseDescription, C.DegreeId, C.ECTS, D.Dept, D.DegreeDescription, D.TotalECTS, T.TeacherId, T.TeacherName, T.Address, T.BirthYearTeacher, T.Gender FROM CourseOffers as CO, Courses C, Degrees D, TeacherAssignmentsToCourses TATC, Teachers T  WHERE CO.CourseId = C.CourseId and CO.CourseOfferId = 1 and C.DegreeId = D.DegreeId and TATC.CourseOfferId = CO.CourseOfferId and TATC.TeacherId = T.TeacherId;
SELECT CO.CourseOfferId, CO.CourseId, CO.Year, CO.Quartile, 
S.StudentId, S.StudentName, S.Address, S.BirthyearStudent,
S.Gender, D.DegreeId, D.Dept, D.DegreeDescription, D.TotalECTS 
FROM CourseOffers CO, StudentAssistants SA, Students S, StudentRegistrationsToDegrees SRTD, Degrees D
WHERE Co.CourseOfferId = SA.CourseOfferId AND SA.StudentRegistrationId = 3 AND SA.StudentRegistrationId = SRTD.StudentRegistrationId AND SRTD.StudentId = S.StudentId AND SRTD.DegreeId = D.DegreeId;
SELECT avg(Grade) FROM CourseRegistrations WHERE StudentRegistrationId = 3;
