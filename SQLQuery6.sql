SELECT EMPLOYEE.First_Name, EMPLOYEE.Last_Name, EMPLOYEE.Birth_Date, EMPLOYEE.State, EMPLOYEE.Hourly_Rate, EMPLOYEE.Hours, EMPLOYEE.Overtime
FROM EMPLOYEE
WHERE EMPLOYEE.STATE ='California' and Hours>20;
