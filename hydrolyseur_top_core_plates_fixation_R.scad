//===============================================//
//===============================================//
//BioDeploy SCAD file = hydrolyseur_top_core_plates_fixation_R.scad//
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
module number1()
{

for (i_x = [0:core_plate_number/4]) 
{
translate([i_x*10,0,0]) cube([x_core_plate_size,y_h2o_top_core_plate+3,z_h2o_top_core_plate],center = true);
}
}

module number2()
{

for (i_x = [0:core_plate_number/4]) 
{
translate([i_x*10,0,0]) cube([x_core_plate_size,y_h2o_top_core_plate+3,z_h2o_top_core_plate],center = true);
}
}



//fixation



module fixation(){
union()
{
hull() {
color("Red",1)translate([0,-y_h2o_top_core_int/2,z_h2o_top_core_int/2-(z_h2o_top_core_int/3)/2])cube([x_h2o_top_core_int,y_h2o_top_core_mid/5,z_h2o_top_core_int/3],center = true);
color("Red",1)translate([0,-y_h2o_top_core_int/2,-z_h2o_top_core_int/2+(z_h2o_top_core_int/3)/2])cube([x_h2o_top_core_int,y_h2o_top_core_mid/5,z_h2o_top_core_int/3],center = true);
}

color("orange")  translate([0,-y_h2o_top_core_int/1.7,0])cube([x_h2o_top_core_int,y_h2o_top_core_int/10,z_h2o_top_core_int+2],center = true);
}}


module fixation2() {

difference() {
union()
{
fixation();

}

//axe

union() {
translate([0,-y_h2o_top_core_int/2,z_h2o_top_core_int/3])rotate([0,90,0])cylinder(2*x_h2o_top_core_int,y_h2o_top_core_int/20,y_h2o_top_core_int/20,center=true);
translate([0,y_h2o_top_core_int/2,z_h2o_top_core_int/3])rotate([0,90,0])cylinder(2*x_h2o_top_core_int,y_h2o_top_core_int/20,y_h2o_top_core_int/20,center=true);
translate([0,-y_h2o_top_core_int/2,-z_h2o_top_core_int/3])rotate([0,90,0])cylinder(2*x_h2o_top_core_int,y_h2o_top_core_int/20,y_h2o_top_core_int/20,center=true);
translate([0,y_h2o_top_core_int/2,-z_h2o_top_core_int/3])rotate([0,90,0])cylinder(2*x_h2o_top_core_int,y_h2o_top_core_int/20,y_h2o_top_core_int/20,center=true);


//open

translate([0,y_h2o_top_core_int/1.7,(z_h2o_top_core_int+2)/2])rotate([0,90,0])cylinder(2*x_h2o_top_core_int,y_h2o_top_core_int/6,y_h2o_top_core_int/6,center=true);
translate([0,-y_h2o_top_core_int/1.7,(z_h2o_top_core_int+2)/2])rotate([0,90,0])cylinder(2*x_h2o_top_core_int,y_h2o_top_core_int/6,y_h2o_top_core_int/6,center=true);
translate([0,-y_h2o_top_core_int/1.7,-(z_h2o_top_core_int+2)/2])rotate([0,90,0])cylinder(2*x_h2o_top_core_int,y_h2o_top_core_int/6,y_h2o_top_core_int/6,center=true);
translate([0,y_h2o_top_core_int/1.7,-(z_h2o_top_core_int+2)/2])rotate([0,90,0])cylinder(2*x_h2o_top_core_int,y_h2o_top_core_int/6,y_h2o_top_core_int/6,center=true);

translate([0,-5,0]) number1();
translate([-5,5,0]) number2();

rotate([0,180,0])translate([0,-5,0]) number1();
rotate([0,180,0])translate([+5,+5,0]) number2();
}
}

}

fixation2();




//%cube([x_h2o_top_core_ext,y_h2o_top_core_ext,z_h2o_top_core_ext],center = true);

//-----------------------------------------------//
//===============================================//
//===============================================//
//BioDeploy SCAD file = hydrolyseur_top_core_plates_fixation.scad//
//                   End  File                   //
//===============================================//
//===============================================//
