## Structure of Test Framework
 <pre><code>
   drill-test-framework
     |_ framework
        |_ resources
           |_ Functional   (default location for test suites) 
           |_ Advanced     (test suites requiring large datasets)
           |_ Datasources  (datasets and scripts)
     |_ bin
        |_ build_framework (script used to compile the framework)
        |_ run_tests       (script used to execute tests)
</code></pre>

## Adding Tests
 1. In the [Functional](framework/resources/Functional) / [Advanced](framework/resources/Advanced) directory, create a directory for a new test suite (or `cd` to an existing test suite).
 2. In the test suite directory, add testcases, expected results, and test definition file(s). Optionally include test suite sub directories to organize tests. 
 3. Pairs of testcase (ex: `query1.sql`) and expected result files (ex: `query1.e_tsv`) are co-located and share the same name.
 4. You could generate expected result files using Postgres or any such database.
 5. In the [Datasources][framework/resources/Datasources] directory, create corresponding datasource directories and copy over any required scripts and datasets required by the tests.
 6. Refer to [README](framework/resources/Advanced/README.md) for downloading datasets required for the Advanced tests. 

## Add testcases
A testcase consists a query file and a baseline file containing the expected result. The query file contains a list of SQL statements. Only one query statement that proceeded with a "--@test" line (can't contain ";") is verified against the baseline. If no query meets that requirement, the middle query is verified. Here is an example:

-- Some setup queries
setup query one;
...
--@test The following query will be verified.
select * from table;
-- Some teardown queries
teardown query one;
...


## Structure of test definiton files. 
A test definition file is a JSON file that defines one or a set of tests within a directory. The framework scans for files with .json extension in the specified location(s) and executes all test(s) defined. 

 <pre><code>
 {
   "testId": "...",                    // Unique identification string for test suite. Ex: window_function_tests
   "type": "group",                    // Group of tests
   "negative": false,                  // Tests are positive or negative (expected success or expected failures)
   "description": "...",               // Description for test suites
   "submit-type": "jdbc",              // Currently the support types: jdbc, odbc, script
   "script": "Functional/script_location/script.sh paras" // Specify the test script to execute
   "queryType": "sql",              
   "timeout": null,
   "categories": [
     "...",                            // Labels for categorizing test suites. Ex: smoke
     "..."
   ],
   "dependencies": [
     "...",                            // Additional dependencies in setup. Ex: hive, hbase, maprdb
     "..."  
   ],
   "matrices": [
     {
       "query-file": `".*.sql"`,       // File name pattern of query files (REGEX). The example will match any filename with ".sql" extension
       "schema": "dfs.tmp",            // Drill storage plugin.workspace, or just the storage plugin name in case of hive, hbase
       "output-format": "tsv",         // Delimiter to seperate columns in expected result files
       "expected-file": `".*.e_tsv"`,  // File name pattern of expected result files (REGEX)
       "username": "user",
       "password": "pass",
       "verification-type": [          // Supported type "in-memory", "regex"
         "in-memory",
         "..."
       ]
     }
   ],
   "datasources": [
     {
       "mode": "cp",                   // Use "cp" to copy datasets
       "src": "`<Source path on local file system>`",
       "dest": "`<Destination path on DFS>`"
     },
     {
       "mode": "gen",                  // Use "gen" to execute scripts
       "src": "`<Source path on local file system>`",
       "dest": ""
     },
     ...
   ]
 }
</code></pre>
