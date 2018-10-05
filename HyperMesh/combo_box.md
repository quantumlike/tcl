### combo box for HM v2017

```tcl
catch {delete ::test_aaa}

namespace eval ::test_aaa {
    variable c3var
}

proc ::test_aaa::mainGUI {args} {

    variable label_1;
    variable fileentry_1;

    variable label_2;
    variable fileentry_2;
    
    set dlgWidth  [ hwt::DluWidth 250 [ hwt::AppFont ]];
    set dlgHeight [ hwt::DluHeight  100 [ hwt::AppFont ]];

    set min_dlgWidth  [ hwt::DluWidth  240 [ hwt::AppFont ]];
    set min_dlgHeight [ hwt::DluHeight  100 [ hwt::AppFont ]];
	
	hwt::CreateWindow win \
         -minsize 200 100 \
         -maxsize 1000 100 \
         -noGeometrySaving \
         -geometry ${dlgWidth}x${dlgHeight} \
         -cancelButton Cancel \
         -defaultButton Cancel \
         -acceptButton Accept \
          -minSize $min_dlgWidth $min_dlgHeight \
         -acceptFunc "" \
         -cancelFunc "" \
         -windowtitle "combobox" \
         -post;

    #Create recess to hold frames
    set recess [hwt::WindowRecess win];

    grid columnconfigure $recess 1 -weight 1 ;

    set ::test_aaa::c3var Sydney
    set australianCities {
        Canberra Sydney Melbourne Perth Adelaide Brisbane
        Hobart Darwin "Alice Springs"
    }
    hwtk::labelframe $recess.lf3 -text "Defined List Only"


    hwtk::combobox $recess.lf3.cb -textvariable ::test_aaa::c3var -state readonly -values $australianCities

    grid $recess.lf3.cb -row 3 -col 0 -sticky w -padx 4 -pady 4;
    grid $recess.lf3 -row 3 -col 1 -sticky e -padx 4 -pady 4;
        
    # Button frame
    frame $recess.buttons;
    grid $recess.buttons -row 4 -col 1 -sticky e -padx 4 -pady 4;
    
    
    button $recess.buttons.outputs -font [ hwt::AppFont b ] \
                                       -text "outputs" -width 10 \
                                       -command "::test_aaa::put_test";
    grid $recess.buttons.outputs  -row 5 -col 1 -sticky e -padx 4 -pady 4;
    
    hwt::KeepOnTop win

}

proc ::test_aaa::put_test { args} {

    puts $::test_aaa::c3var

}

::test_aaa::mainGUI


```
