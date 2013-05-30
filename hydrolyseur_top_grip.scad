//===============================================//
//===============================================//
//BioDeploy SCAD file = hydrolyseur_top_grip.scad//
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
 module topogrip()
{
rotate([45,0,0])translate([-x_h2o_box_int/6,0,0])rotate([60,0,0])cube([x_h2o_box_int/2,y_h2o_box_int/1,z_h2o_box_int/5]);
translate([-x_h2o_box_int/6,0,0])rotate([60,0,0])cube([x_h2o_box_int/2,y_h2o_box_int/1,z_h2o_box_int/5]);
}


module gripsmoothtop()
{union(){
hull(){
sphere(x_h2o_box_int/15, center=true);
translate([x_h2o_box_int/15,0,0])sphere(x_h2o_box_int/15, center=true);}

hull(){
sphere(x_h2o_box_int/15, center=true);
translate([-x_h2o_box_int/15,0,0])sphere(x_h2o_box_int/15, center=true);}
}}

module gripsmoothtop_int()
{union(){
hull(){
sphere(x_h2o_box_int_grip/15, center=true);
translate([x_h2o_box_int_grip/15,0,0])sphere(x_h2o_box_int_grip/15, center=true);}

hull(){
sphere(x_h2o_box_int_grip/15, center=true);
translate([-x_h2o_box_int_grip/15,0,0])sphere(x_h2o_box_int_grip/15, center=true);}
}
}
module cutgriptop() {
difference() {
gripsmoothtop();
gripsmoothtop_int();
}}

module griptopfull() {
difference() {
cutgriptop();
topogrip();
}}

module griptopfull2() {
rotate([75,0,0])griptopfull();
}

griptopfull2();

//-----------------------------------------------//
//===============================================//
//===============================================//
//BioDeploy SCAD file = hydrolyseur_top_grip.scad//
//                   End  File                   //
//===============================================//
//===============================================//
