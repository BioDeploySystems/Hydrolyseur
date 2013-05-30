//===============================================//
//===============================================//
//BioDeploy SCAD file = hydrolyseur_top_core_base_support.scad//
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
//===============================================//
//               Calls for use                   //
//===============================================//


//===============================================//
//                    Trees                      //
//===============================================//

module coin(){
difference() {
cube([x_h2o_top_int_fix,y_h2o_top_int_fix,z_h2o_top_int_fix], center = true);
cylinder(z_h2o_top_int_fix+z_h2o_top_int_fix/10,y_h2o_top_int_fix/6,y_h2o_top_int_fix/6, center = true);}}


module bitcoin() {
union() {
translate([x_sphere_int/2-x_h2o_top_int_fix/2,y_sphere_int/2-y_h2o_top_int_fix/2,z_h2o_top_int_fix/2])coin();
translate([-x_sphere_int/2+x_h2o_top_int_fix/2,y_sphere_int/2-y_h2o_top_int_fix/2,z_h2o_top_int_fix/2])coin();
translate([-x_sphere_int/2+x_h2o_top_int_fix/2,-y_sphere_int/2+y_h2o_top_int_fix/2,z_h2o_top_int_fix/2])coin();
translate([x_sphere_int/2-x_h2o_top_int_fix/2,-y_sphere_int/2+y_h2o_top_int_fix/2,z_h2o_top_int_fix/2])coin();}}

bitcoin();
//-----------------------------------------------//
//===============================================//
//===============================================//
//BioDeploy SCAD file = hydrolyseur_top_core_base_support.scad//
//                   End  File                   //
//===============================================//
//===============================================//
