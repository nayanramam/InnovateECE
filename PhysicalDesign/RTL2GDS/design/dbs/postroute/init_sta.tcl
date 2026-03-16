#dataVar is dir where this script is found
set dataVar [file dirname [file normalize [info script]]]
source -quiet $dataVar/Core.tempus_setup.tcl
set_db flow_report_name postroute
set_db flow_spef_directory dbs/postroute
