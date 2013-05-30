//===============================================//
//===============================================//
//BioDeploy SCAD file = hydrolyseur_top_core_base_support_attach.scad//
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

module base_fixation() {
difference() {
union() {

translate([-x_h2o_top_int_fix/2,-4,0])cube([x_h2o_top_int_fix,8,8],center=false);
color("Aqua",1)rotate([0,90,0])cylinder(x_h2o_top_int_fix,7,7,center=true);}

union() {
translate([0,0,0])rotate([0,90,0])cylinder(50,5,5,center=true);
translate([0,0,-5])rotate([0,90,0])cylinder(50,3.8,3.8,center=true);
translate([0,0,-10])rotate([0,90,0])cylinder(50,5.5,5.5,center=true);}
}}

base_fixation();

module base_fixation_ext() {
difference() {
union() {

translate([-x_h2o_top_int_fix/2,-4,0])cube([x_h2o_top_int_fix,8,15.5],center=false);
color("Aqua",1)rotate([0,90,0])cylinder(x_h2o_top_int_fix,7,7,center=true);}

union() {
translate([0,0,0])rotate([0,90,0])cylinder(50,5,5,center=true);
translate([0,0,-5])rotate([0,90,0])cylinder(50,3.8,3.8,center=true);
translate([0,0,-10])rotate([0,90,0])cylinder(50,5.5,5.5,center=true);}
}}

base_fixation_ext();
//-----------------------------------------------//
//===============================================//
//===============================================//
//BioDeploy SCAD file = hydrolyseur_top_core_base_support_attach.scad//
//                    End File                   //
//===============================================//
//===============================================//
