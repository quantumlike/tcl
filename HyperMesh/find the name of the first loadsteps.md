### Find  the name of the first loadsteps in HM

```tcl
*createmark loadsteps 1 "all"
set step_list [hm_getmark loadsteps 1]
set smallest_step [lindex [lsort -integer $step_list] 0]
hm_getvalue loadsteps id=$smallest_step dataname=name
```
