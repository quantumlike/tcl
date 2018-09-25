
### Create new entity name

```tcl
proc create_new_name {name} {
    set i 0
    set name_ [string range $name 0 [string last "_" $name]]
    while {[hm_entityinfo exist comps "${name_}[incr i]" -byname]} {}
    return ${name_}$i
}
```
