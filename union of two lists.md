### union of two lists

```tcl
set list1 {a b c}
set list2 {1 2 3}
set list3 [list {*}$list1 {*}$list2]
set union [lsort -unique [list {*}$list1 {*}$list2]]
set list5 [concat $list1 $list2]
```

```tcl
% set list1 {a b c}
a b c
% set list2 {1 2 3}
1 2 3
% set list3 [list {*}$list1 {*}$list2]
a b c 1 2 3
% set union [lsort -unique [list {*}$list1 {*}$list2]]
1 2 3 a b c 
% set list5 [concat $list1 $list2]
a b c 1 2 3
```
