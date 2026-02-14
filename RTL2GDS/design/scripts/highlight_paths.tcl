proc highlight_paths {} {

    gui_dim_foreground -light_level {dark}

    report_timing -output_format binary > setup.btarpt

    read_timing_debug_report setup.btarpt

    gui_gtd_highlight_timing_report -in_file setup.btarpt -all

}
