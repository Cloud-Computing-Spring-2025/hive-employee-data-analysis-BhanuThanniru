INSERT OVERWRITE DIRECTORY '/user/hive/warehouse/output/query_4.txt' ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' SELECT job_role, COUNT(*) FROM employees_partitioned GROUP BY job_role;
