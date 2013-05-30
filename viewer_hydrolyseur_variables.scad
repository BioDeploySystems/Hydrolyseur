//===============================================//
//===============================================//
//BioDeploy SCAD file = viewer_hydrolyseur_variables.scad//
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
echo("variable smooth_low = :", smooth_low);
echo("variable smooth_int = :", smooth_int);
echo("variable smooth_high = :", smooth_high);
echo("variable smooth_ultra = :", smooth_ultra);
echo("variable radius_low = :", radius_low);
echo("variable manifold = :", manifold);
//===============================================//
//        more spec for your hydrolyzer          //
//===============================================//
echo("variable x_print_max = :", x_print_max, "mm");
echo("variable y_print_max = :", y_print_max, "mm");
echo("variable z_print_max = :", z_print_max, "mm");
echo("variable x_h2o_cont_ext = :", x_h2o_cont_ext, "mm");
echo("variable y_h2o_cont_ext = :", y_h2o_cont_ext, "mm");
echo("variable z_h2o_cont_ext = :", z_h2o_cont_ext, "mm");
//===============================================//
//                Box container                  //
//===============================================//
echo("variable x_h2o_cont_int = :", x_h2o_cont_int, "mm");
echo("variable y_h2o_cont_int = :", y_h2o_cont_int, "mm");
echo("variable z_h2o_cont_int = :", z_h2o_cont_int, "mm");
//===============================================//
//                Box variables                  //
//===============================================//
echo("variable x_h2o_box_ext = :", x_h2o_box_ext, "mm");
echo("variable y_h2o_box_ext = :", y_h2o_box_ext, "mm");
echo("variable z_h2o_box_ext = :", z_h2o_box_ext, "mm");
echo("variable x_h2o_cont_int = :", x_h2o_cont_int, "mm");
echo("variable y_h2o_cont_int = :", y_h2o_cont_int, "mm");
echo("variable z_h2o_cont_int = :", z_h2o_cont_int, "mm");
echo("variable x_h2o_box_int = :", x_h2o_box_int, "mm");
echo("variable y_h2o_box_int = :", y_h2o_box_int, "mm");
echo("variable z_h2o_box_int = :", z_h2o_box_int, "mm");
echo("variable x_h2o_box_int_difference = :", x_h2o_box_int_difference, "mm");
echo("variable y_h2o_box_int_difference = :", y_h2o_box_int_difference, "mm");
echo("variable z_h2o_box_int_difference = :", z_h2o_box_int_difference, "mm");
echo("variable x_move_1 = :", x_move_1, "mm");
echo("variable y_move_1 = :", y_move_1, "mm");
echo("variable z_move_1 = :", z_move_1, "mm");
echo("variable z_h2o_box_int_move = :", z_h2o_box_int_move, "mm");
//===============================================//
//      spec for your hydrolyseur top            //
//===============================================//
echo("variable x_h2o_top_ext = :", x_h2o_top_ext, "mm");
echo("variable y_h2o_top_ext = :", y_h2o_top_ext, "mm");
echo("variable z_h2o_top_ext = :", z_h2o_top_ext, "mm");
echo("variable x_move_2 = :", x_move_2, "mm");
echo("variable y_move_2 = :", y_move_2, "mm");
echo("variable z_move_2 = :", z_move_2, "mm");
echo("variable x_h2o_top_int = :", x_h2o_top_int, "mm");
echo("variable y_h2o_top_int = :", y_h2o_top_int, "mm");
echo("variable z_h2o_top_int = :", z_h2o_top_int, "mm");
//===============================================//
//      spec for your hydrolyseur grip           //
//===============================================//
echo("variable w_grip_ext = :", w_grip_ext, "mm");
echo("variable h_grip_ext = :", h_grip_ext, "mm");
echo("variable d_grip_ext = :", d_grip_ext, "mm");
echo("variable w_grip_int = :", w_grip_int, "mm");
echo("variable h_grip_int = :", h_grip_int, "mm");
echo("variable d_grip_int = :", d_grip_int, "mm");
//===============================================//
//      spec for your hydrolyseur grip2          //
//===============================================//
echo("variable w_grip2_ext = :", w_grip2_ext, "mm");
echo("variable h_grip2_ext = :", h_grip2_ext, "mm");
echo("variable d_grip2_ext = :", d_grip2_ext, "mm");
echo("variable w_grip2_int = :", w_grip2_int, "mm");
echo("variable h_grip2_int = :", h_grip2_int, "mm");
echo("variable d_grip2_int = :", d_grip2_int, "mm");
//===============================================//
//      spec for your hydrolyseur smooth         //
//===============================================//

//

//===============================================//
//          spec for the sphere on top           //
//===============================================//
echo("variable r_sphere_ext = :", r_sphere_ext, "mm");
echo("variable x_sphere_ext = :", x_sphere_ext, "mm");
echo("variable y_sphere_ext = :", y_sphere_ext, "mm");
echo("variable z_sphere_ext = :", z_sphere_ext, "mm");
echo("variable r_sphere_int = :", r_sphere_int, "mm");
echo("variable x_sphere_int = :", x_sphere_int, "mm");
echo("variable y_sphere_int = :", y_sphere_int, "mm");
echo("variable z_sphere_int = :", z_sphere_int, "mm");
//===============================================//
//                 smooth on box                 //
//===============================================//
echo("variable x_rayonsmoothbox = :", x_rayonsmoothbox, "mm");
echo("variable y_rayonsmoothbox = :", y_rayonsmoothbox, "mm");
//===============================================//
//                 Grip Top Var                  //
//===============================================//
echo("variable x_h2o_box_int_grip = :", x_h2o_box_int_grip, "mm");
echo("variable y_h2o_box_int_grip = :", y_h2o_box_int_grip, "mm");
echo("variable z_h2o_box_int_grip = :", z_h2o_box_int_grip, "mm");
//===============================================//
//               Volumetric Calcul               //
//===============================================//
echo("variable mm3_h20_max = :", mm3_h20_max, "mm3");
echo("variable l_h20_max = :", l_h20_max, "liter");
//-----------------------------------------------//
//===============================================//
//===============================================//
//BioDeploy SCAD file = viewer_hydrolyseur_variables.scad//
//                   End  File                   //
//===============================================//
//===============================================//
