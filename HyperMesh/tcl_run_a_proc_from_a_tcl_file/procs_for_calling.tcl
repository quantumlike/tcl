
set test_proc_curDir [file dirname [info script]]

proc pop_messagebox { args } {  
    tk_messageBox -icon error -title "ERROR" -message "proc called."
}

proc call_tcl_file { args } {
    global test_proc_curDir
    Source [file join $test_proc_curDir tcl_file_for_calling.tcl]
}

proc hello_world_message { args } {  
    tk_messageBox -icon error -title "ERROR" -message "hell world called."
}