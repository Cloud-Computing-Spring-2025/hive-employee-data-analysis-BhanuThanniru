INSERT OVERWRITE DIRECTORY '/user/hive/warehouse/output/query_1.txt' ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' SELECT * FROM employees_partitioned WHERE year(join_date) > 2015;
