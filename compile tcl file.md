### using TclPro1.4 to compile a tcl file to a .tbc file

```tcl
echo off
echo
echo remove any space between # and the sentence in the comments before the first tcl command line
echo
echo remove any procesure which is for comments. such as: proc work_flow { args } {. tcl pro cannot handle such procesure.
echo

SET mypath=%~dp0
echo %mypath:~0,-1%
cd /d %mypath%

echo on


rem syntax check:
"C:\Program Files (x86)\TclPro1.4\win32-ix86\bin\procheck.exe" "V:\unmask_adjacent_elements_for_RBODY.tcl" -W1 > check.txt

rem combile to binary file:
"C:\Program Files (x86)\TclPro1.4\win32-ix86\bin\procomp.exe" "V:\unmask_adjacent_elements_for_RBODY.tcl"
```
