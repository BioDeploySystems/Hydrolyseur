//===============================================//
//===============================================//
//BioDeploy SCAD file = hydrolyseur_variables.scad//
//                    Start File                 //
//===============================================//
//===============================================//
//-----------------------------------------------//

//===============================================//
//             3d printer parameters             //
//===============================================//
include <3dprinter.scad>
//===============================================//
//  choose the spec for your hydrolyzer box      //
//===============================================//
smooth_low = 25;
smooth_int = 50;
smooth_high = 100;
smooth_ultra = 200;
radius_low = 3;
manifold = 0.1; // Manifold necessity
//===============================================//
//        more spec for your hydrolyzer          //
//===============================================//
x_h2o_cont_ext = x_print_max;
y_h2o_cont_ext = y_print_max;
z_h2o_cont_ext = z_print_max;
//===============================================//
//                Box container                  //
//===============================================//
x_h2o_cont_int_cal1 = x_h2o_cont_ext / 100;
x_h2o_cont_int = x_h2o_cont_int_cal1 * 100;
y_h2o_cont_int_cal1 = y_h2o_cont_ext / 100;
y_h2o_cont_int = y_h2o_cont_int_cal1 * 100;
z_h2o_cont_int_cal1 = z_h2o_cont_ext / 100;
z_h2o_cont_int = z_h2o_cont_int_cal1 * 100;
//===============================================//
//                Box variables                  //
//===============================================//
x_h2o_box_ext = x_h2o_cont_int;
y_h2o_box_ext = y_h2o_cont_int;
z_h2o_box_ext = z_h2o_cont_int;
x_h2o_box_int_cal1 = x_h2o_box_ext / 100;
x_h2o_box_int = x_h2o_box_int_cal1 * 85;
y_h2o_box_int_cal1 = y_h2o_box_ext / 100;
y_h2o_box_int = y_h2o_box_int_cal1 * 85;
z_h2o_box_int_cal1 = z_h2o_box_ext / 100;
z_h2o_box_int = z_h2o_box_int_cal1 * 95;
x_h2o_box_int_difference_cal1 = x_h2o_box_ext / 100;
x_h2o_box_int_difference = x_h2o_box_int_difference_cal1 * 96;
y_h2o_box_int_difference_cal1 = y_h2o_box_ext / 100;
y_h2o_box_int_difference = y_h2o_box_int_difference_cal1 * 94;
z_h2o_box_int_difference_cal1 = z_h2o_box_ext / 100;
z_h2o_box_int_difference = z_h2o_box_int_difference_cal1 * 110;
x_move_1_cal1 = x_h2o_box_int_cal1 * 5;
x_move_1 = x_move_1_cal1 / 2;
y_move_1_cal1 = y_h2o_box_int_cal1 * 5;
y_move_1 = y_move_1_cal1 / 2;
z_move_1_cal1 = z_h2o_box_int_cal1 * 5;
z_move_1_cal2 = z_h2o_box_int_cal1 * 1 ;
z_move_1 = z_move_1_cal1 + z_move_1_cal2;
z_h2o_box_int_move_cal1 = z_h2o_box_int_difference - z_h2o_box_ext ;
z_h2o_box_int_move = z_h2o_box_int_move_cal1/1.3;
//===============================================//
//      spec for your hydrolyseur top            //
//===============================================//
x_h2o_top_ext_cal1 = x_h2o_box_int / 100;
x_h2o_top_ext = x_h2o_box_int_cal1 * 95;
y_h2o_top_ext_cal1 = y_h2o_box_int / 100;
y_h2o_top_ext = y_h2o_box_int_cal1 * 95;
z_h2o_top_ext_cal1 = z_h2o_box_int / 100;
z_h2o_top_ext = z_h2o_box_int_cal1 * 65;
x_move_2_cal1 = x_h2o_top_ext_cal1 * 5;
x_move_2 = x_move_2_cal1 / 2;
y_move_2_cal1 = y_h2o_top_ext_cal1 * 5;
y_move_2 = y_move_2_cal1 / 2;
z_move_2_cal1 = z_h2o_top_ext_cal1 * 5;
z_move_2_cal2 = z_h2o_top_ext_cal1 * 2 ;
z_move_2 = z_move_2_cal1 + z_move_2_cal2;
x_h2o_top_int_cal1 = x_h2o_top_ext / 100;
x_h2o_top_int = x_h2o_top_int_cal1 * 100;
y_h2o_top_int_cal1 = y_h2o_top_ext / 100;
y_h2o_top_int = y_h2o_top_int_cal1 * 100;
z_h2o_top_int_cal1 = z_h2o_top_ext / 100;
z_h2o_top_int = z_h2o_top_int_cal1 * 100;
//===============================================//
//      spec for your hydrolyseur grip           //
//===============================================//
w_grip_ext = x_h2o_box_ext/3;
h_grip_ext = y_h2o_box_ext/5;
d_grip_ext = z_h2o_box_ext/8;
w_grip_int_cal1 = w_grip_ext / 100;
w_grip_int = w_grip_int_cal1 * 80;
h_grip_int_cal1 = h_grip_ext / 100;
h_grip_int = h_grip_int_cal1 * 80;
d_grip_int_cal1 = d_grip_ext / 100;
d_grip_int = d_grip_int_cal1 * 80;
//===============================================//
//      spec for your hydrolyseur grip2          //
//===============================================//
w_grip2_ext = x_h2o_box_ext/3;
h_grip2_ext = y_h2o_box_ext/5;
d_grip2_ext = z_h2o_box_ext/8;
w_grip2_int_cal1 = w_grip2_ext / 100;
w_grip2_int = w_grip2_int_cal1 * 90;
h_grip2_int_cal1 = h_grip2_ext / 100;
h_grip2_int = h_grip2_int_cal1 * 90;
d_grip2_int_cal1 = d_grip2_ext / 100;
d_grip2_int = d_grip2_int_cal1 * 90;
//===============================================//
//      spec for your hydrolyseur smooth         //
//===============================================//

//

//===============================================//
//          spec for the sphere on top           //
//===============================================//
r_sphere_ext_cal1 = x_h2o_box_int / 100;
r_sphere_ext = r_sphere_ext_cal1 * 62;
x_sphere_ext_cal1 = x_h2o_box_int / 100;
x_sphere_ext = x_sphere_ext_cal1 * 98;
y_sphere_ext_cal1 = y_h2o_box_int / 100;
y_sphere_ext = y_sphere_ext_cal1 * 98;
z_sphere_ext_cal1 = z_h2o_box_int / 100;
z_sphere_ext = z_sphere_ext_cal1 * 98;
r_sphere_int_cal1 = r_sphere_ext / 100;
r_sphere_int = r_sphere_int_cal1 * 98;
x_sphere_int_cal1 = x_sphere_ext / 100;
x_sphere_int = x_sphere_int_cal1 * 97;
y_sphere_int_cal1 = y_sphere_ext / 100;
y_sphere_int = y_sphere_int_cal1 * 95;
z_sphere_int_cal1 = z_sphere_ext / 100;
z_sphere_int = z_sphere_int_cal1 * 90;
//===============================================//
//                 smooth on box                 //
//===============================================//
x_rayonsmoothbox_cal1 = x_h2o_box_ext - x_h2o_box_int ;
x_rayonsmoothbox = x_rayonsmoothbox_cal1/4;
y_rayonsmoothbox_cal1 = y_h2o_box_ext - y_h2o_box_int ;
y_rayonsmoothbox = y_rayonsmoothbox_cal1/4;
//===============================================//
//                 Grip Top Var                  //
//===============================================//
x_h2o_box_int_grip_cal1 = x_h2o_box_int / 100;
x_h2o_box_int_grip = x_h2o_box_int_grip_cal1 * 90;
y_h2o_box_int_grip_cal1 = y_h2o_box_int / 100;
y_h2o_box_int_grip = y_h2o_box_int_grip_cal1 * 90;
z_h2o_box_int_grip_cal1 = z_h2o_box_int / 100;
z_h2o_box_int_grip = z_h2o_box_int_grip_cal1 * 90;
//===============================================//
//                 Fix Top Support               //
//===============================================//
x_h2o_top_int_fix_cal1 = x_sphere_int / 100;
x_h2o_top_int_fix = x_h2o_top_int_fix_cal1 * 10;
y_h2o_top_int_fix_cal1 = y_sphere_int / 100;
y_h2o_top_int_fix = y_h2o_top_int_fix_cal1 * 25;
z_h2o_top_int_fix_cal1 = z_sphere_int / 100;
z_h2o_top_int_fix = z_h2o_top_int_fix_cal1 * 3;
//===============================================//
//                    Top Core                   //
//            hydrolyseur_core.scad              //
//===============================================//
x_h2o_top_core_ext_cal1 = x_sphere_int / 100;
x_h2o_top_core_ext = x_h2o_top_core_ext_cal1 * 75;
y_h2o_top_core_ext_cal1 = y_sphere_int / 100;
y_h2o_top_core_ext = y_h2o_top_core_ext_cal1 * 65;
z_h2o_top_core_ext_cal1 = z_sphere_int / 100;
z_h2o_top_core_ext = z_h2o_top_core_ext_cal1 * 45;

x_h2o_top_core_mid_cal1 = x_h2o_top_core_ext / 100;
x_h2o_top_core_mid = x_h2o_top_core_mid_cal1 * 95;
y_h2o_top_core_mid_cal1 = y_h2o_top_core_ext / 100;
y_h2o_top_core_mid = y_h2o_top_core_mid_cal1 * 95;
z_h2o_top_core_mid_cal1 = z_h2o_top_core_ext / 100;
z_h2o_top_core_mid = z_h2o_top_core_mid_cal1 * 95;

x_h2o_top_core_mid2_cal1 = x_h2o_top_core_mid / 100;
x_h2o_top_core_mid2 = x_h2o_top_core_mid2_cal1 * 102;
y_h2o_top_core_mid2_cal1 = y_h2o_top_core_mid / 100;
y_h2o_top_core_mid2 = y_h2o_top_core_mid2_cal1 * 102;
z_h2o_top_core_mid2_cal1 = z_h2o_top_core_mid / 100;
z_h2o_top_core_mid2 = z_h2o_top_core_mid2_cal1 * 102;

x_h2o_top_core_int_cal1 = x_h2o_top_core_mid / 100;
x_h2o_top_core_int = x_h2o_top_core_int_cal1 * 90;
y_h2o_top_core_int_cal1 = y_h2o_top_core_mid / 100;
y_h2o_top_core_int = y_h2o_top_core_int_cal1 * 90;
z_h2o_top_core_int_cal1 = z_h2o_top_core_mid / 100;
z_h2o_top_core_int = z_h2o_top_core_int_cal1 * 90;

x_h2o_top_core_plate_cal1 = x_h2o_top_core_int / 100;
x_h2o_top_core_plate = x_h2o_top_core_plate_cal1 * 90;
y_h2o_top_core_plate_cal1 = y_h2o_top_core_int / 100;
y_h2o_top_core_plate = y_h2o_top_core_plate_cal1 * 90;
z_h2o_top_core_plate_cal1 = z_h2o_top_core_int / 100;
z_h2o_top_core_plate = z_h2o_top_core_plate_cal1 * 90;

// core plate numbers

core_plate_number = 24;
x_core_plate_size = 1.5; //put in millimeter

//===============================================//
//               Volumetric Calcul               //
//===============================================//
mm3_h20_max = (x_h2o_box_int * y_h2o_box_int * z_h2o_box_int)/2;
l_h20_max = mm3_h20_max / 1000000;

//===============================================//
//                   connector                   //
//===============================================//

overlap = 0.001;

OD = 6.25;
OR = OD/2;

ID = 4;
IR = ID/2;

conetop = IR+((OR-IR)/2);

length = 9;
sections = 4;
section_length = length/(sections);
//standoff = section_length;
standoff=20;
//-----------------------------------------------//
//===============================================//
//===============================================//
//  BioDeploy SCAD file = hydrolyseur_var.scad   //
//                    End File                   //
//===============================================//
//===============================================//
