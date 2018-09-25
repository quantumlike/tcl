
```tcl
*clearmark property 1
*createmarkpanel property 1 "Select properties from screen"
set property_list [hm_getmark property 1];
#puts "property_list = $property_list"

set property_list_file "property_list_file.txt"
set property_list_file_handle [open $property_list_file w+]

set property_solver_id_in_order ""
foreach property_id $property_list {
    set property_solver_id [lindex [hm_getsolverid props $property_id] 0]
    lappend property_solver_id_in_order $property_solver_id
}
set property_solver_id_in_order [lsort -integer $property_solver_id_in_order]
set id_number [llength $property_solver_id_in_order]
puts $property_list_file_handle "total $id_number properties listed here."
foreach id $property_solver_id_in_order {
    puts $property_list_file_handle "$id"
} 
#puts $property_list_file_handle "Done & Close."
close $property_list_file_handle;
```
