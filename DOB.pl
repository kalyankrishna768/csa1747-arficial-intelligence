% Facts for storing name and date of birth (DOB) in the format: dob(Name, Day, Month, Year).

% Example entries:
dob('John Doe', 15, march, 1990).
dob('Alice Smith', 22, july, 1985).
dob('Bob Johnson', 8, january, 1978).
dob('Emma Brown', 30, december, 1992).

% You can add more entries as needed.

% Query example to find the DOB of a person:
% ?- dob('Alice Smith', Day, Month, Year).
% Day = 22,
% Month = july,
% Year = 1985.

% Query example to find people born on a specific day:
% ?- dob(Name, 15, march, 1990).
% Name = 'John Doe'.
