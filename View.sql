CREATE VIEW employee_Details AS
SELECT e.BusinessEntityID,e.JobTitle,e.Gender, d.Name AS Department, s.Name AS Shift
FROM HumanResources.Employee e
JOIN HumanResources.EmployeeDepartmentHistory edh
ON e.BusinessEntityID = edh.BusinessEntityID JOIN HumanResources.Department d
ON edh.DepartmentID = d.DepartmentID JOIN HumanResources.Shift s
ON edh.ShiftID = s.ShiftID WHERE edh.EndDate IS NULL;

select * from employee_Details
