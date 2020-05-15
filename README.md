COMET-Farm API Example File Descriptions
These files are provided as examples, with no warranty, either expressed or implied.
Following is a summary of files included in this dataset:
-	API File IO Instructions.docx: Explains how to connect to and interact with the API
-	COMET-Farm API File Description - <version>.xlsx: Explains in detail the input and output .xml file structure, including allowed values.
-	SQL Scripts:
    o	create_api_results_tables.sql: An example .sql script to create data tables in MariaDB to support automated processing of API .xml output files. Can be adapted to other SQL language variants.
    o	create_daycent_values_tables.sql: Similar to above, this script constructs data tables that support automated processing of DayCent outputs.
    o	example_input_database_generator.sql: This script is an example we used to generate the data tables needed to process the COMET-Planner model runs. The tables generated support the python script “example_input_file_generatory.py.”
-	Input and output .xml files:
    o	example_cropland_input_file.xml: This is an example input file users can run through the API, to show the structure of the input files and provide an example for testing.
    o	example_cropland_output_file.xml: This is the output file generated by the example input file provided in this dataset, provided to show the output .xml file data structure.
-	Python scripts:
    o	example_input_file_generator.py: This script constructs .xml input files generated from the tables constructed in “example_input_database_generator.sql.”
    o	example_out_file_processor.py: Example of how to open an output .xml file and process the results into a set of database tables. This works with the tables generated in the sql script “create_api_results_tables.sql” and “create_daycent_values_tables.sql”.
-	Interpreting DayCent model results from the COMET-Farm API.docx: This white paper offers guidance on how to interpret the results generated from the API.

Following is the expected order of operations using these files. Please note that all database tables are assumed to be in a Mariadb database. The Mariadb tables reside in a database named “comet”.
1)	Run the SQL script “create api_results_tables.sql”.
2)	Run the SQL script “create_daycent_values_tables.sql”.
3)	Run the SQL script “example_input_database_generator.sql”.
4)	Run the python script “example_input_file_generatory.py”.
5)	Submit the xml file generated by that script to the COMET-Farm API.
6)	Run the python script “example_output_file_processor.py” with the xml results file generated by the COMET-Farm API.
7)	The results for the model runs will be stored in the Mariadb database API and DayCent output tables.
