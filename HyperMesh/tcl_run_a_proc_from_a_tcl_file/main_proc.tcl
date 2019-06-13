
set ::test_curDir [file dirname [info script]]


#Source [file join $::test_curDir procs_for_calling.tcl]
set tcl_file [file join $::test_curDir procs_for_calling.tcl ]
*evaltclscript "$tcl_file" 0
*evaltclstring "pop_messagebox" 0
*evaltclstring "call_tcl_file" 0