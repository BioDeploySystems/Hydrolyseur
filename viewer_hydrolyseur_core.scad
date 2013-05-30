//===============================================//
//===============================================//
//BioDeploy SCAD file = viewer_hydrolyseur_core.scad//
//                 Start File                    //
//===============================================//
//===============================================//
//-----------------------------------------------//
//===============================================//
//             3d printer parameters             //
//===============================================//
include <3dprinter.scad>
//===============================================//
//                 variables                     //
//===============================================//
include <hydrolyseur_variables.scad>
use <hydrolyseur_top_core_base_fixation.scad>

module core() {

include <hydrolyseur_top_core_plates_fixation.scad>
include <hydrolyseur_top_core_plates.scad>
translate([-70,0,0])rotate([0,0,180])base_fixation();
translate([70,00,0])base_fixation(); 

//z
translate([0,-y_h2o_top_core_int/2,z_h2o_top_core_int/3])rotate([0,90,0])cylinder(1.2*x_h2o_top_core_int,y_h2o_top_core_int/20,y_h2o_top_core_int/20,center=true);
translate([0,y_h2o_top_core_int/2,z_h2o_top_core_int/3])rotate([0,90,0])cylinder(1.2*x_h2o_top_core_int,y_h2o_top_core_int/20,y_h2o_top_core_int/20,center=true);

//-z
translate([0,-y_h2o_top_core_int/2,-z_h2o_top_core_int/3])rotate([0,90,0])cylinder(1.2*x_h2o_top_core_int,y_h2o_top_core_int/20,y_h2o_top_core_int/20,center=true);
translate([0,y_h2o_top_core_int/2,-z_h2o_top_core_int/3])rotate([0,90,0])cylinder(1.2*x_h2o_top_core_int,y_h2o_top_core_int/20,y_h2o_top_core_int/20,center=true);

}



core();



//===============================================//
//                    Trees                      //
//===============================================//

//-----------------------------------------------//
//===============================================//
//===============================================//
//BioDeploy SCAD file = viewer_hydrolyseur_box.scad//
//                   End  File                   //
//===============================================//
//===============================================//
