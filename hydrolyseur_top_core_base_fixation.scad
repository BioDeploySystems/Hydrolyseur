//===============================================//
//===============================================//
//BioDeploy SCAD file = hydrolyseur_top_core_base_fixation.scad//
//                 Start File                    //
//===============================================//
//===============================================//
//-----------------------------------------------//
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

use <hydrolyseur_top_core_plates_fixation.scad>



module base_fixation() {



difference() {

union() {
color("Green",1)translate([0,0,-5])cube([x_h2o_top_core_mid2/30,y_h2o_top_core_mid2,z_h2o_top_core_mid2/1.5],center = true);
color("Aquamarine",1)translate([-5,0,0])cube([x_h2o_top_core_ext/20,y_h2o_top_core_ext+14,z_h2o_top_core_ext-2],center = true);
translate([0,y_h2o_top_core_mid2/4,-z_h2o_top_core_mid2/6])rotate([0,90,0])cylinder(25,5,5,center=false);
translate([0,-y_h2o_top_core_mid2/4,-z_h2o_top_core_mid2/6])rotate([0,90,0])cylinder(25,5,5,center=false);
translate([0,0,0])rotate([0,90,0])cylinder(25,5,5,center=false);

translate([0,y_h2o_top_core_mid2/4,-z_h2o_top_core_mid2/6])rotate([0,90,0])cylinder(8,8,8,center=false);
translate([0,-y_h2o_top_core_mid2/4,-z_h2o_top_core_mid2/6])rotate([0,90,0])cylinder(8,8,8,center=false);
translate([0,0,0])rotate([0,90,0])cylinder(8,8,8,center=false);

translate([0,y_h2o_top_core_mid2/4,-z_h2o_top_core_mid2/6])rotate([0,90,0])cylinder(5,12,12,center=false);
translate([-0.1,-y_h2o_top_core_mid2/4,-z_h2o_top_core_mid2/6])rotate([0,90,0])cylinder(5,12,12,center=false);
translate([0,0,0])rotate([0,90,0])cylinder(5,12,12,center=false);}

union() {
translate([-1.4,-y_h2o_top_core_int/2,z_h2o_top_core_int/3])rotate([0,90,0])cylinder(0.5*x_h2o_top_core_int,y_h2o_top_core_int/6,y_h2o_top_core_int/10);
translate([-1.4,y_h2o_top_core_int/2,z_h2o_top_core_int/3])rotate([0,90,0])cylinder(0.5*x_h2o_top_core_int,y_h2o_top_core_int/6,y_h2o_top_core_int/10);

//-z
translate([-1.4,-y_h2o_top_core_int/2,-z_h2o_top_core_int/3])rotate([0,90,0])cylinder(0.5*x_h2o_top_core_int,y_h2o_top_core_int/6,y_h2o_top_core_int/10);
translate([-1.4,y_h2o_top_core_int/2,-z_h2o_top_core_int/3])rotate([0,90,0])cylinder(0.5*x_h2o_top_core_int,y_h2o_top_core_int/6,y_h2o_top_core_int/10);

translate([0,-y_h2o_top_core_int/2,z_h2o_top_core_int/3])rotate([0,90,0])cylinder(3*x_h2o_top_core_int,y_h2o_top_core_int/20,y_h2o_top_core_int/20,center=true);
translate([0,y_h2o_top_core_int/2,z_h2o_top_core_int/3])rotate([0,90,0])cylinder(3*x_h2o_top_core_int,y_h2o_top_core_int/20,y_h2o_top_core_int/20,center=true);

//-z
translate([0,-y_h2o_top_core_int/2,-z_h2o_top_core_int/3])rotate([0,90,0])cylinder(3*x_h2o_top_core_int,y_h2o_top_core_int/20,y_h2o_top_core_int/20,center=true);
translate([0,y_h2o_top_core_int/2,-z_h2o_top_core_int/3])rotate([0,90,0])cylinder(3*x_h2o_top_core_int,y_h2o_top_core_int/20,y_h2o_top_core_int/20,center=true);
}}}

module base_fixation1() {
difference() {
union() {
translate([70,00,0])base_fixation(); }
union() {
rotate([180,180,0])fixation2();
fixation2();}
}
}
base_fixation1();

//-----------------------------------------------//
//===============================================//
//===============================================//
//BioDeploy SCAD file = hydrolyseur_top_core_base_fixation.scad//
//                    End File                   //
//===============================================//
//===============================================//
