### use two or more variables in a string

```tcl
set a to
set b do
set c list
set d $a_$b_$c.txt
set d ${a}_${b}_${c}.txt
```


```tcl
% set a to
to
% set a to
to
% set b do
do
% set c list
list
% set d $a_$b_$c.txt
can't read "a_": no such variable
% set d ${a}_${b}_${c}.txt
to_do_list.txt
```
