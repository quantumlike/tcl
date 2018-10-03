### union of two lists

```tcl
set first {a b c}
set second {1 2 3}
set third [list {*}$first {*}$second]
```

```tcl
% set first {a b c}  
a b c  
% set second {1 2 3}  
1 2 3  
% set third [list {*}$first {*}$second]  
a b c 1 2 3  
```
