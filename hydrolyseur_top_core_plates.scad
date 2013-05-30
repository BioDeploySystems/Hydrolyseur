//===============================================//
//===============================================//
//BioDeploy SCAD file = hydrolyseur_top_core_plates.scad//
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


translate([0,-5,0]) number1();
translate([-5,5,0]) number2();

rotate([0,180,0])translate([0,-5,0]) number1();
rotate([0,180,0])translate([+5,+5,0]) number2();


//-----------------------------------------------//
//===============================================//
//===============================================//
//BioDeploy SCAD file = hydrolyseur_top_core_plates.scad//
//                    End File                   //
//===============================================//
//===============================================//
