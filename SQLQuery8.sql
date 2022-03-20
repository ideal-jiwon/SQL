SELECT EMPLOYEE.Employee_Number, EMPLOYEE.Hourly_Rate, EMPLOYEE.Overtime
FROM EMPLOYEE
CREATE COLUMN EMPLOYEE
(Overtime_Pay = Hourly_Rate*Overtime);
