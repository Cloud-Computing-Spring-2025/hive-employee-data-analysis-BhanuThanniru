INSERT OVERWRITE DIRECTORY '/user/hive/warehouse/output/query_5.txt' ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' 
SELECT e.* 
FROM employees_partitioned e 
JOIN (
    SELECT department, AVG(salary) AS avg_salary FROM employees_partitioned GROUP BY department
) avg_dept 
ON e.department = avg_dept.department 
WHERE e.salary > avg_dept.avg_salary;