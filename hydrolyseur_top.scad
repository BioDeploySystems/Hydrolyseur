//===============================================//
//===============================================//
//  BioDeploy SCAD file = hydrolyseur_top.scad   //
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
use <hydrolyseur_top_core_base_support.scad>
use <hydrolyseur_top_connector.scad>
use <hydrolyseur_top_grip.scad>
//===============================================//
//                    Trees                      //
//===============================================//
module top2()
{
  rotate([180,0,0])difference()
	{
	cube([x_h2o_top_ext,y_h2o_top_ext,z_h2o_top_ext], center = true);
	translate([x_move_2,y_move_2,z_move_2]) cube([x_h2o_top_int,y_h2o_top_int,z_h2o_top_int], center = true);
	}
}


//translate([0,0,0])top2(center = true);

//cube([x_h2o_top_int/2,y_h2o_top_int,z_h2o_top_int], center = true);

//sphere(r_sphere_int, center = true, $fn=smooth_ultra);

//==================== Ext

module equation2ext()
{
union()
{
//cube([x_sphere_ext,y_sphere_ext,z_sphere_ext], center = true);
scale([1,1,0.8])sphere(r_sphere_ext, center = true, $fn=smooth_ultra);
}
}

module socletopext()
{
difference()
{
cube([3*x_sphere_ext,3*y_sphere_ext,4*z_sphere_ext], center = true);
translate([0,0,z_sphere_ext])cube([x_sphere_ext,y_sphere_ext,3*z_sphere_ext], center = true);
}
}

module socle3ext()
{
difference() 
{
socletop2ext();
socletopext();
}
}

module socleext()
{
difference()
{
equation2ext();
socle3ext();
}
}





//==================== Int

module equation2int()
{
union()
{
//cube([x_sphere_int,y_sphere_int,z_sphere_int], center = true);
scale([1,1,0.8])sphere(r_sphere_int, center = true, $fn=smooth_ultra);
}
}

module socletopint()
{
difference()
{
cube([3*x_sphere_int,3*y_sphere_int,4*z_sphere_int], center = true);
translate([0,0,z_sphere_int])cube([x_sphere_int,y_sphere_int,3*z_sphere_int], center = true);
}
}

module socle3int()
{
difference() 
{
socletop2int();
socletopint();
}
}

module socleint()
{
difference()
{
equation2int();
socle3int();
}
}

module onetopsocle()
{
difference()
{
socleext();
translate([0,0,-3])socleint();
}
}


module topsocle()
{
difference()
{
onetopsocle();
translate([0,0,-z_sphere_ext/2]){cube([x_sphere_ext*3,y_sphere_ext*3,z_sphere_ext], center = true);}
}
}

module cross()
{
union()
{
rotate([90,0,0])cylinder(2*z_h2o_box_ext,5,5, center = true, $fn=smooth_ultra);
rotate([0,90,0])cylinder(2*z_h2o_box_ext,5,5, center = true, $fn=smooth_ultra);
cylinder(2*z_h2o_box_ext,2,2, center = true, $fn=smooth_ultra);
}
}

module topsocleroundbottom()
{
difference()
{
union()
{
topsocle();
translate([0,0,x_sphere_int/2])print_single_connector($fn=24);
}
cross();
}
}




module gripper() {
union() 
{
translate([x_h2o_top_int/3,0,z_h2o_top_int/1.15])rotate([0,0,90])griptopfull2();
translate([-x_h2o_top_int/3,0,z_h2o_top_int/1.15])rotate([0,0,-90])mirror([1,0,0])griptopfull2();
}}

module gripper2() {
difference()
{
gripper();
socleint();
}}

module lasttop()
{
union(){
topsocleroundbottom();
gripper2();}}

union() {
lasttop();
bitcoin();
}

//-----------------------------------------------//
//===============================================//
//===============================================//
//  BioDeploy SCAD file = hydrolyseur_top2.scad  //
//                   End  File                   //
//===============================================//
//===============================================//
