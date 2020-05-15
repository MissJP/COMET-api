# the table api_results_cropland is common to everything
# ***********************************************************
# cropland tables
# ***********************************************************
DROP TABLE IF EXISTS test_marke.api_results_cropland;
CREATE TABLE test_marke.api_results_cropland ( 
	id BIGINT AUTO_INCREMENT PRIMARY KEY, 
	name varchar(450), 
	id_mlra_crops_from_cdl_2009_2015 int(11), 
	id_mlra_grass_from_cdl_2009_2015 int(11), 
	mlra varchar(5), 
	practice varchar(200), 
	scenario varchar(200), 
	irrigated char(1), 
	soil_carbon_co2 float, 
	soil_carbon_co2_uncertainty float, 
	soil_carbon_stock_2000 float, 
	soil_carbon_stock_2000_uncertainty float, 
	soil_carbon_stock_begin float, 
	soil_carbon_stock_begin_uncertainty float, 
	soil_carbon_stock_end float, 
	soil_carbon_stock_end_uncertainty float, 
	soil_n2o float, 
	soil_n2o_uncertainty float, 
	biomass_burning_co2 float, 
	biomass_burning_co2_uncertainty float, 
	liming_co2 float, 
	liming_co2_uncertainty float, 
	ureafertilization_co2 float, 
	ureafertilization_co2_uncertainty float, 
	drainedorganicsoils_co2 float, 
	drainedorganicsoils_co2_uncertainty float, 
	biomassburning_co float, 
	biomassburning_co_uncertainty float, 
	wetlandricecultivation_n2o float, 
	wetlandricecultivation_n2o_uncertainty float, 
	biomassburning_n2o float, 
	biomassburning_n2o_uncertainty float, 
	drainedorganicsoils_n2o float, 
	drainedorganicsoils_n2o_uncertainty float, 
	soil_ch4 float, 
	soil_ch4_uncertainty float, 
	wetlandricecultivation_ch4 float, 
	wetlandricecultivation_ch4_uncertainty float, 
	biomassburning_ch4 float, 
	biomassburning_ch4_uncertainty float, 
	total_co2e float, 
	INDEX( id_mlra_crops_from_cdl_2009_2015 ), 
	INDEX( id_mlra_grass_from_cdl_2009_2015 ), 
	INDEX( practice, irrigated ), 
	INDEX( scenario ), 
	INDEX( mlra ) 
);

# The daycent master table for the baseline data
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_master;
CREATE TABLE test_marke.api_results_cropland_daycent_baseline_master ( 
	id BIGINT AUTO_INCREMENT PRIMARY KEY, 
	id_mlra_crops_from_cdl_2009_2015 int(11), 
	mlra varchar(5), 
	irrigated char(1), 
	mapunit int(11), 
	area float, 
	INDEX( id_mlra_crops_from_cdl_2009_2015 ), 
	INDEX( mlra, irrigated )
);

# data for the current period and baseline scenario
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_aagdefac; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_aagdefac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_abgdefac; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_abgdefac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_accrst; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_accrst ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_accrste_1_; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_accrste_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_agcprd; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_agcprd ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_aglivc; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_aglivc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_annppt; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_annppt ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_bgdefac; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_bgdefac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_bglivcm; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_bglivcm ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_cgrain; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_cgrain ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_cinput; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_cinput ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_crmvst; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_crmvst ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_crootc; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_crootc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_crpval; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_crpval ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_egracc_1_; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_egracc_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_eupacc_1_; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_eupacc_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_fbrchc; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_fbrchc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_fertac_1_; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_fertac_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_fertac_1; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_fertac_1 ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_fertot_1_1_; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_fertot_1_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_frootcm; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_frootcm ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_gromin_1_; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_gromin_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_inputcrop; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_inputcrop ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_irrigated; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_irrigated ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_irrtot; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_irrtot ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_metabc_1_; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_metabc_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_metabc_2_; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_metabc_2_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_metabe_1_1_; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_metabe_1_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_metabe_2_1_; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_metabe_2_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_n2oflux; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_n2oflux ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_nfixac; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_nfixac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_noflux; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_noflux ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_omadac; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_omadac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_omadae_1_; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_omadae_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_petann; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_petann ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_rlwodc; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_rlwodc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_somsc; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_somsc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_somse_1_; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_somse_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_stdedc; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_stdedc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_stdede_1_; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_stdede_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_strmac_1_; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_strmac_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_strmac_2_; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_strmac_2_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_strmac_6_; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_strmac_6_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_strucc_1_; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_strucc_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_struce_1_1_; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_struce_1_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_struce_2_1_; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_struce_2_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_tminrl_1_; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_tminrl_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_tnetmn_1_; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_tnetmn_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_volpac; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_volpac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_baseline_year; CREATE TABLE test_marke.api_results_cropland_daycent_baseline_year ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );


# The daycent master table for the future scenarios
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_master;
CREATE TABLE test_marke.api_results_cropland_daycent_scenario_master ( 
	id BIGINT AUTO_INCREMENT PRIMARY KEY, 
	name varchar(450), 
	id_mlra_crops_from_cdl_2009_2015 int(11), 
	mlra varchar(5), 
	practice varchar(200), 
	scenario varchar(200), 
	irrigated char(1), 
	mapunit int(11), 
	area float, 
	INDEX( id_mlra_crops_from_cdl_2009_2015 ), 
	INDEX( mlra, practice, scenario, irrigated )
);

# set of tables for the future scenario data
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_aagdefac; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_aagdefac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_abgdefac; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_abgdefac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_accrst; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_accrst ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_accrste_1_; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_accrste_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_agcprd; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_agcprd ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_aglivc; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_aglivc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_annppt; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_annppt ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_bgdefac; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_bgdefac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_bglivcm; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_bglivcm ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_cgrain; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_cgrain ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_cinput; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_cinput ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_crmvst; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_crmvst ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_crootc; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_crootc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_crpval; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_crpval ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_egracc_1_; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_egracc_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_eupacc_1_; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_eupacc_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_fbrchc; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_fbrchc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_fertac_1_; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_fertac_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_fertac_1; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_fertac_1 ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_fertot_1_1_; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_fertot_1_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_frootcm; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_frootcm ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_gromin_1_; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_gromin_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_inputcrop; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_inputcrop ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_irrigated; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_irrigated ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_irrtot; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_irrtot ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_metabc_1_; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_metabc_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_metabc_2_; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_metabc_2_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_metabe_1_1_; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_metabe_1_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_metabe_2_1_; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_metabe_2_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_n2oflux; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_n2oflux ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_nfixac; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_nfixac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_noflux; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_noflux ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_omadac; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_omadac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_omadae_1_; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_omadae_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_petann; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_petann ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_rlwodc; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_rlwodc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_somsc; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_somsc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_somse_1_; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_somse_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_stdedc; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_stdedc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_stdede_1_; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_stdede_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_strmac_1_; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_strmac_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_strmac_2_; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_strmac_2_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_strmac_6_; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_strmac_6_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_strucc_1_; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_strucc_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_struce_1_1_; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_struce_1_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_struce_2_1_; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_struce_2_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_tminrl_1_; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_tminrl_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_tnetmn_1_; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_tnetmn_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_volpac; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_volpac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_cropland_daycent_scenario_year; CREATE TABLE test_marke.api_results_cropland_daycent_scenario_year ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_cropland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_cropland_daycent_master, date_value ) ); 


# ***********************************************************
# grassland tables
# ***********************************************************
DROP TABLE IF EXISTS test_marke.api_results_grassland;
CREATE TABLE test_marke.api_results_grassland ( 
	id BIGINT AUTO_INCREMENT PRIMARY KEY, 
	name varchar(450), 
	id_mlra_crops_from_cdl_2009_2015 int(11), 
	id_mlra_grass_from_cdl_2009_2015 int(11), 
	mlra varchar(5), 
	practice varchar(200), 
	scenario varchar(200), 
	irrigated char(1), 
	soil_carbon_co2 float, 
	soil_carbon_co2_uncertainty float, 
	soil_carbon_stock_2000 float, 
	soil_carbon_stock_2000_uncertainty float, 
	soil_carbon_stock_begin float, 
	soil_carbon_stock_begin_uncertainty float, 
	soil_carbon_stock_end float, 
	soil_carbon_stock_end_uncertainty float, 
	soil_n2o float, 
	soil_n2o_uncertainty float, 
	biomass_burning_co2 float, 
	biomass_burning_co2_uncertainty float, 
	liming_co2 float, 
	liming_co2_uncertainty float, 
	ureafertilization_co2 float, 
	ureafertilization_co2_uncertainty float, 
	drainedorganicsoils_co2 float, 
	drainedorganicsoils_co2_uncertainty float, 
	biomassburning_co float, 
	biomassburning_co_uncertainty float, 
	wetlandricecultivation_n2o float, 
	wetlandricecultivation_n2o_uncertainty float, 
	biomassburning_n2o float, 
	biomassburning_n2o_uncertainty float, 
	drainedorganicsoils_n2o float, 
	drainedorganicsoils_n2o_uncertainty float, 
	soil_ch4 float, 
	soil_ch4_uncertainty float, 
	wetlandricecultivation_ch4 float, 
	wetlandricecultivation_ch4_uncertainty float, 
	biomassburning_ch4 float, 
	biomassburning_ch4_uncertainty float, 
	total_co2e float, 
	INDEX( id_mlra_crops_from_cdl_2009_2015 ), 
	INDEX( id_mlra_grass_from_cdl_2009_2015 ), 
	INDEX( practice, irrigated ), 
	INDEX( scenario ), 
	INDEX( mlra ) 
);

# The daycent master table for the baseline data
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_master;
CREATE TABLE test_marke.api_results_grassland_daycent_baseline_master ( 
	id BIGINT AUTO_INCREMENT PRIMARY KEY, 
	id_mlra_grass_from_cdl_2009_2015 int(11), 
	mlra varchar(5), 
	irrigated char(1), 
	mapunit int(11), 
	area float, 
	INDEX( id_mlra_grass_from_cdl_2009_2015 ), 
	INDEX( mlra, irrigated )
);

# data for the current period and baseline scenario
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_aagdefac; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_aagdefac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_abgdefac; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_abgdefac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_accrst; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_accrst ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_accrste_1_; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_accrste_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_agcprd; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_agcprd ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_aglivc; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_aglivc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_annppt; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_annppt ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_bgdefac; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_bgdefac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_bglivcm; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_bglivcm ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_cgrain; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_cgrain ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_cinput; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_cinput ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_crmvst; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_crmvst ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_crootc; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_crootc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_crpval; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_crpval ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_egracc_1_; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_egracc_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_eupacc_1_; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_eupacc_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_fbrchc; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_fbrchc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_fertac_1_; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_fertac_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_fertac_1; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_fertac_1 ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_fertot_1_1_; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_fertot_1_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_frootcm; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_frootcm ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_gromin_1_; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_gromin_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_inputcrop; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_inputcrop ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_irrigated; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_irrigated ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_irrtot; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_irrtot ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_metabc_1_; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_metabc_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_metabc_2_; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_metabc_2_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_metabe_1_1_; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_metabe_1_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_metabe_2_1_; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_metabe_2_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_n2oflux; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_n2oflux ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_nfixac; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_nfixac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_noflux; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_noflux ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_omadac; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_omadac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_omadae_1_; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_omadae_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_petann; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_petann ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_rlwodc; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_rlwodc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_somsc; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_somsc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_somse_1_; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_somse_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_stdedc; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_stdedc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_stdede_1_; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_stdede_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_strmac_1_; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_strmac_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_strmac_2_; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_strmac_2_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_strmac_6_; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_strmac_6_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_strucc_1_; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_strucc_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_struce_1_1_; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_struce_1_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_struce_2_1_; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_struce_2_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_tminrl_1_; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_tminrl_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_tnetmn_1_; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_tnetmn_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_volpac; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_volpac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_baseline_year; CREATE TABLE test_marke.api_results_grassland_daycent_baseline_year ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );


# The daycent master table for the future scenarios
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_master;
CREATE TABLE test_marke.api_results_grassland_daycent_scenario_master ( 
	id BIGINT AUTO_INCREMENT PRIMARY KEY, 
	name varchar(450), 
	id_mlra_grass_from_cdl_2009_2015 int(11), 
	mlra varchar(5), 
	practice varchar(200), 
	scenario varchar(200), 
	irrigated char(1), 
	mapunit int(11), 
	area float, 
	INDEX( id_mlra_grass_from_cdl_2009_2015 ), 
	INDEX( mlra, practice, scenario, irrigated )
);

# set of tables for the future scenario data
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_aagdefac; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_aagdefac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_abgdefac; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_abgdefac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_accrst; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_accrst ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_accrste_1_; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_accrste_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_agcprd; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_agcprd ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_aglivc; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_aglivc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_annppt; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_annppt ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_bgdefac; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_bgdefac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_bglivcm; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_bglivcm ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_cgrain; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_cgrain ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_cinput; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_cinput ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_crmvst; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_crmvst ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_crootc; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_crootc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_crpval; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_crpval ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_egracc_1_; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_egracc_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_eupacc_1_; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_eupacc_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_fbrchc; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_fbrchc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_fertac_1_; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_fertac_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_fertac_1; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_fertac_1 ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_fertot_1_1_; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_fertot_1_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_frootcm; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_frootcm ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_gromin_1_; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_gromin_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_inputcrop; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_inputcrop ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_irrigated; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_irrigated ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_irrtot; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_irrtot ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_metabc_1_; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_metabc_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_metabc_2_; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_metabc_2_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_metabe_1_1_; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_metabe_1_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_metabe_2_1_; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_metabe_2_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_n2oflux; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_n2oflux ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_nfixac; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_nfixac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_noflux; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_noflux ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_omadac; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_omadac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_omadae_1_; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_omadae_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_petann; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_petann ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_rlwodc; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_rlwodc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_somsc; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_somsc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_somse_1_; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_somse_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_stdedc; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_stdedc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_stdede_1_; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_stdede_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_strmac_1_; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_strmac_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_strmac_2_; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_strmac_2_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_strmac_6_; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_strmac_6_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_strucc_1_; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_strucc_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_struce_1_1_; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_struce_1_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_struce_2_1_; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_struce_2_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_tminrl_1_; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_tminrl_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_tnetmn_1_; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_tnetmn_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_volpac; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_volpac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_grassland_daycent_scenario_year; CREATE TABLE test_marke.api_results_grassland_daycent_scenario_year ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_grassland_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_grassland_daycent_master, date_value ) ); 

# ***********************************************************
# woodycrops tables
# ***********************************************************
TRUNCATE test_marke.api_results_woodycrops;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_master;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_aagdefac;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_abgdefac;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_accrst;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_accrste_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_agcprd;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_aglivc;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_annppt;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_bgdefac;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_bglivcm;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_cgrain;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_cinput;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_crmvst;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_crootc;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_crpval;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_egracc_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_eupacc_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_fbrchc;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_fertac_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_fertac_1;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_fertot_1_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_frootcm;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_gromin_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_inputcrop;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_irrigated;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_irrtot;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_metabc_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_metabc_2_;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_metabe_1_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_metabe_2_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_n2oflux;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_nfixac;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_noflux;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_omadac;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_omadae_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_petann;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_rlwodc;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_somsc;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_somse_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_stdedc;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_stdede_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_strmac_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_strmac_2_;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_strmac_6_;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_strucc_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_struce_1_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_struce_2_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_tminrl_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_tnetmn_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_volpac;
TRUNCATE test_marke.api_results_woodycrops_daycent_baseline_year;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_master;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_aagdefac;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_abgdefac;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_accrst;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_accrste_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_agcprd;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_aglivc;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_annppt;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_bgdefac;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_bglivcm;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_cgrain;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_cinput;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_crmvst;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_crootc;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_crpval;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_egracc_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_eupacc_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_fbrchc;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_fertac_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_fertac_1;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_fertot_1_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_frootcm;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_gromin_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_inputcrop;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_irrigated;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_irrtot;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_metabc_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_metabc_2_;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_metabe_1_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_metabe_2_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_n2oflux;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_nfixac;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_noflux;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_omadac;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_omadae_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_petann;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_rlwodc;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_somsc;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_somse_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_stdedc;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_stdede_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_strmac_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_strmac_2_;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_strmac_6_;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_strucc_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_struce_1_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_struce_2_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_tminrl_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_tnetmn_1_;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_volpac;
TRUNCATE test_marke.api_results_woodycrops_daycent_scenario_year;

DROP TABLE IF EXISTS test_marke.api_results_woodycrops;
CREATE TABLE test_marke.api_results_woodycrops ( 
	id BIGINT AUTO_INCREMENT PRIMARY KEY, 
	name varchar(450), 
	id_mlra_woodycrops_pts int(11), 
	mlra varchar(5), 
	practice varchar(200), 
	scenario varchar(200), 
	irrigated char(1), 
	soil_carbon_co2 float, 
	soil_carbon_co2_uncertainty float, 
	soil_carbon_stock_2000 float, 
	soil_carbon_stock_2000_uncertainty float, 
	soil_carbon_stock_begin float, 
	soil_carbon_stock_begin_uncertainty float, 
	soil_carbon_stock_end float, 
	soil_carbon_stock_end_uncertainty float, 
	soil_n2o float, 
	soil_n2o_uncertainty float, 
	biomass_burning_co2 float, 
	biomass_burning_co2_uncertainty float, 
	liming_co2 float, 
	liming_co2_uncertainty float, 
	ureafertilization_co2 float, 
	ureafertilization_co2_uncertainty float, 
	drainedorganicsoils_co2 float, 
	drainedorganicsoils_co2_uncertainty float, 
	biomassburning_co float, 
	biomassburning_co_uncertainty float, 
	wetlandricecultivation_n2o float, 
	wetlandricecultivation_n2o_uncertainty float, 
	biomassburning_n2o float, 
	biomassburning_n2o_uncertainty float, 
	drainedorganicsoils_n2o float, 
	drainedorganicsoils_n2o_uncertainty float, 
	soil_ch4 float, 
	soil_ch4_uncertainty float, 
	wetlandricecultivation_ch4 float, 
	wetlandricecultivation_ch4_uncertainty float, 
	biomassburning_ch4 float, 
	biomassburning_ch4_uncertainty float, 
	total_co2e float, 
	INDEX( id_mlra_woodycrops_pts ), 
	INDEX( practice, irrigated ), 
	INDEX( scenario ), 
	INDEX( mlra ) 
);

# The daycent master table for the baseline data
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_master;
CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_master ( 
	id BIGINT AUTO_INCREMENT PRIMARY KEY, 
	id_mlra_woodycrops_pts int(11), 
	mlra varchar(5), 
	irrigated char(1), 
	mapunit int(11), 
	area float, 
	INDEX( id_mlra_woodycrops_pts ), 
	INDEX( mlra, irrigated )
);

# data for the current period and baseline scenario
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_aagdefac; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_aagdefac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_abgdefac; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_abgdefac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_accrst; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_accrst ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_accrste_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_accrste_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_agcprd; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_agcprd ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_aglivc; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_aglivc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_annppt; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_annppt ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_bgdefac; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_bgdefac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_bglivcm; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_bglivcm ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_cgrain; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_cgrain ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_cinput; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_cinput ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_crmvst; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_crmvst ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_crootc; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_crootc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_crpval; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_crpval ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_egracc_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_egracc_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_eupacc_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_eupacc_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_fbrchc; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_fbrchc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_fertac_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_fertac_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_fertac_1; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_fertac_1 ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_fertot_1_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_fertot_1_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_frootcm; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_frootcm ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_gromin_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_gromin_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_inputcrop; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_inputcrop ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_irrigated; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_irrigated ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_irrtot; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_irrtot ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_metabc_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_metabc_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_metabc_2_; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_metabc_2_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_metabe_1_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_metabe_1_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_metabe_2_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_metabe_2_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_n2oflux; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_n2oflux ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_nfixac; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_nfixac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_noflux; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_noflux ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_omadac; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_omadac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_omadae_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_omadae_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_petann; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_petann ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_rlwodc; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_rlwodc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_somsc; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_somsc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_somse_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_somse_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_stdedc; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_stdedc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_stdede_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_stdede_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_strmac_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_strmac_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_strmac_2_; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_strmac_2_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_strmac_6_; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_strmac_6_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_strucc_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_strucc_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_struce_1_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_struce_1_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_struce_2_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_struce_2_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_tminrl_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_tminrl_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_tnetmn_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_tnetmn_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_volpac; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_volpac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_baseline_year; CREATE TABLE test_marke.api_results_woodycrops_daycent_baseline_year ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );


# The daycent master table for the future scenarios
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_master;
CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_master ( 
	id BIGINT AUTO_INCREMENT PRIMARY KEY, 
	name varchar(450), 
	id_mlra_woodycrops_pts int(11), 
	mlra varchar(5), 
	practice varchar(200), 
	scenario varchar(200), 
	irrigated char(1), 
	mapunit int(11), 
	area float, 
	INDEX( id_mlra_woodycrops_pts ), 
	INDEX( mlra, practice, scenario, irrigated )
);

# set of tables for the future scenario data
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_aagdefac; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_aagdefac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_abgdefac; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_abgdefac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_accrst; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_accrst ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_accrste_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_accrste_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_agcprd; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_agcprd ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_aglivc; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_aglivc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_annppt; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_annppt ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_bgdefac; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_bgdefac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_bglivcm; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_bglivcm ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_cgrain; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_cgrain ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_cinput; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_cinput ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_crmvst; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_crmvst ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_crootc; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_crootc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_crpval; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_crpval ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_egracc_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_egracc_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_eupacc_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_eupacc_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_fbrchc; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_fbrchc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_fertac_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_fertac_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_fertac_1; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_fertac_1 ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_fertot_1_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_fertot_1_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_frootcm; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_frootcm ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_gromin_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_gromin_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_inputcrop; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_inputcrop ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_irrigated; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_irrigated ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_irrtot; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_irrtot ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_metabc_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_metabc_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_metabc_2_; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_metabc_2_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_metabe_1_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_metabe_1_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_metabe_2_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_metabe_2_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_n2oflux; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_n2oflux ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_nfixac; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_nfixac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_noflux; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_noflux ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_omadac; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_omadac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_omadae_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_omadae_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_petann; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_petann ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_rlwodc; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_rlwodc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_somsc; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_somsc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_somse_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_somse_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_stdedc; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_stdedc ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_stdede_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_stdede_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_strmac_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_strmac_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_strmac_2_; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_strmac_2_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_strmac_6_; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_strmac_6_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_strucc_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_strucc_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_struce_1_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_struce_1_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_struce_2_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_struce_2_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_tminrl_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_tminrl_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_tnetmn_1_; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_tnetmn_1_ ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_volpac; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_volpac ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
DROP TABLE IF EXISTS test_marke.api_results_woodycrops_daycent_scenario_year; CREATE TABLE test_marke.api_results_woodycrops_daycent_scenario_year ( id BIGINT AUTO_INCREMENT PRIMARY KEY, id_api_results_woodycrops_daycent_master BIGINT , date_value varchar( 8 ), output_value varchar( 20 ), INDEX( id_api_results_woodycrops_daycent_master, date_value ) );
