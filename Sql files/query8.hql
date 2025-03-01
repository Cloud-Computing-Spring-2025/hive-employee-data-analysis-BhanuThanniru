INSERT OVERWRITE DIRECTORY '/user/hive/warehouse/output/query_8.txt' ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' 
SELECT e.*, d.location 
FROM employees_partitioned e 
JOIN temp_departments d 
ON e.department = d.department_name;
