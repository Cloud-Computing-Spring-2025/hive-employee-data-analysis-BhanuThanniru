INSERT OVERWRITE DIRECTORY '/user/hive/warehouse/output/query_9.txt' ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' 
SELECT emp_id, name, salary, department, 
RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS salary_rank 
FROM employees_partitioned;
