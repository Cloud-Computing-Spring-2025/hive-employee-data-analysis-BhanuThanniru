INSERT OVERWRITE DIRECTORY '/user/hive/warehouse/output/query_10.txt'
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
SELECT emp_id, name, salary, department
FROM (
    SELECT emp_id, name, salary, department,
    DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS ranking
    FROM employees_partitioned
) ranked
WHERE ranking <= 3;