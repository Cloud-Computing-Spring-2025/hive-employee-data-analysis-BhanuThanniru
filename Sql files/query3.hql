INSERT OVERWRITE DIRECTORY '/user/hive/warehouse/output/query_3.txt' ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' SELECT * FROM employees_partitioned WHERE project = 'Alpha';
