% Facts defining students, teachers, and their associated subjects.
% Format: student(Name, ID).
% Format: teacher(Name, ID).
% Format: subject(SubCode, SubName, TeacherID).

% Students
student('Alice Smith', 1001).
student('Bob Johnson', 1002).
student('Carol White', 1003).

% Teachers
teacher('Dr. James Brown', 2001).
teacher('Prof. Emily Davis', 2002).

% Subjects
subject('CS101', 'Introduction to Computer Science', 2001).
subject('MATH202', 'Calculus II', 2002).
subject('PHYS303', 'Physics III', 2002).

% Facts linking students to subjects
% Format: enrolled(StudentID, SubCode).
enrolled(1001, 'CS101').
enrolled(1001, 'PHYS303').
enrolled(1002, 'MATH202').
enrolled(1003, 'CS101').

% Rule to find the teacher of a subject
teacher_of_subject(SubCode, TeacherName) :-
    subject(SubCode, _, TeacherID),
    teacher(TeacherName, TeacherID).

% Rule to find subjects of a student
student_subjects(StudentName, Subjects) :-
    student(StudentName, StudentID),
    findall(SubName, (enrolled(StudentID, SubCode), subject(SubCode, SubName, _)), Subjects).

% Rule to find students of a subject
subject_students(SubCode, Students) :-
    findall(StudentName, (enrolled(StudentID, SubCode), student(StudentName, StudentID)), Students).

% Example queries:
% ?- teacher_of_subject('CS101', TeacherName).
% TeacherName = 'Dr. James Brown'.

% ?- student_subjects('Alice Smith', Subjects).
% Subjects = ['Introduction to Computer Science', 'Physics III'].

% ?- subject_students('CS101', Students).
% Students = ['Alice Smith', 'Carol White'].
