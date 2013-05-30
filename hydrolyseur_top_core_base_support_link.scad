//===============================================//
//===============================================//
//BioDeploy SCAD file = hydrolyseur_top_core_base_support_link.scad//
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
use <hydrolyseur_top_core_base_support_attach.scad>

//===============================================//
//                    Trees                      //
//===============================================//


module onering() {
difference() {
scale([1,1,0.8])rotate([0,90,0])cylinder(x_h2o_top_int_fix,y_sphere_int/2,y_sphere_int/2,center=true);
scale([1,1,0.8])rotate([0,90,0])cylinder(y_h2o_top_int/4+(y_h2o_top_int/4)*10,y_sphere_int/2-(y_sphere_int/2)/10,y_sphere_int/2-(y_sphere_int/2)/20,center=true);} }

module ring() {
difference() {
onering();
translate([0,0,-z_sphere_int/2])cube([x_sphere_int,y_sphere_int,z_sphere_int], center=true); }}

module ring1() {
difference() {
cube([x_h2o_top_int_fix,y_h2o_top_int_fix,z_h2o_top_int_fix], center = true);
cylinder(z_h2o_top_int_fix+z_h2o_top_int_fix/10,y_h2o_top_int_fix/6,y_h2o_top_int_fix/6, center = true);}

module ring2() {
translate([0,y_sphere_int/2-y_h2o_top_int_fix/2,z_h2o_top_int_fix/2])ring1();
translate([0,-y_sphere_int/2+y_h2o_top_int_fix/2,z_h2o_top_int_fix/2])ring1(); }}

module coin()
difference() {
cube([x_h2o_top_int_fix,y_h2o_top_int_fix,z_h2o_top_int_fix], center = true);
cylinder(z_h2o_top_int_fix+z_h2o_top_int_fix/10,y_h2o_top_int_fix/6,y_h2o_top_int_fix/6, center = true);}





module ultimatering() {
union() {
ring();
ring2();
translate([0,y_sphere_int/2-y_h2o_top_int_fix/2,z_h2o_top_int_fix/2])coin();
translate([0,-y_sphere_int/2+y_h2o_top_int_fix/2,z_h2o_top_int_fix/2])coin();
translate([0,0,y_sphere_int/2-22])base_fixation();
translate([0,-y_h2o_top_core_mid2/4,-z_h2o_top_core_mid2/6+38])base_fixation_ext();
translate([0,+y_h2o_top_core_mid2/4,-z_h2o_top_core_mid2/6+38])base_fixation_ext();
}}

ultimatering();



//-----------------------------------------------//
//===============================================//
//===============================================//
//BioDeploy SCAD file = hydrolyseur_top_core_base_support_link.scad//
//                   End  File                   //
//===============================================//
//===============================================//
