### batch change Young's modulus for OptiStruct & Nastran in HM v2017

```tcl
set scale_factor 0.7
*createmark comps 1 "displayed";
set comp_list [hm_getmark comp 1]
foreach comp_id $comp_list {
    set prop_id [hm_getentityvalue comps $comp_id "property.id" 0 -byid]
    set mat_id [hm_getentityvalue props $prop_id "material.id" 0 -byid]
    set E_vaule [hm_getentityvalue mats $mat_id \$E 0 -byid]
    set updated_E_value [expr $E_vaule * $scale_factor]
    *setvalue mats id=$mat_id STATUS=1 1=$updated_E_value
}
}
```
