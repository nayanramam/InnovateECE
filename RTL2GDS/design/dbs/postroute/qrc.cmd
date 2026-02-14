output_setup -fixed_net_order true
extract \
	-selection all \
	-type rc_coupled
filter_coupling_cap \
	-total_cap_threshold 0.0 \
	-coupling_cap_threshold_absolute 0.4 \
	-coupling_cap_threshold_relative 1.0 \
	-cap_filtering_mode absolute_and_relative
input_db -type def \
	-lef_file_list_file dbs/postroute/qrc.leflist
input_db -type def \
	-design_file dbs/postroute/qrc.def.gz
log_file \
	-file_name qrc_93627_20260214_12:56:57_211.log \
	-dump_options true
extraction_setup \
	-promote_pin_pad logical
process_technology \
	-technology_library_file dbs/postroute/_qrc_techlib.defs \
	-technology_name _qrc_tech_ \
	-technology_corner Nominal_25C \
	-temperature 25
output_db -type spef \
	-short_incomplete_net_pins true \
	-user_defined_file_name counter_16bit.Nominal_25C.spef \
	-subtype STARN
output_setup \
	-compressed true \
	-directory_name dbs/postroute \
	-temporary_directory_name dbs/postroute

