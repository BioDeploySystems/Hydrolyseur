//===============================================//
//===============================================//
//BioDeploy SCAD file = hydrolyseur_top_connector.scad//
//                 Start File                    //
//===============================================//
//===============================================//
//-----------------------------------------------//
//===============================================//
//                   variables                   //
//===============================================//
include <hydrolyseur_variables.scad>
//===============================================//
//               Calls for use                   //
//===============================================//


module print_cone_section()
{
  conebottom = OR;

	difference()
	{
		cylinder(r1=conebottom, r2=conetop, h=section_length+overlap);
	
		translate([0,0,-overlap])
		cylinder(r=IR, h=section_length+overlap*3);
	}
}

module print_cone_sections()
{
	for (section = [0:sections-1])
	{
		translate([0,0,section*section_length])
		print_cone_section();
	}
}

module print_single_connector()
{
	translate([0,0,standoff-overlap])
	print_cone_sections();

	difference()
	{
		cylinder(r=conetop, h=standoff);

		translate([0,0,-overlap])
		connector_blank();
	}
}


print_single_connector($fn=24);
//-----------------------------------------------//
//===============================================//
//===============================================//
//BioDeploy SCAD file = hydrolyseur_top_connector.scad//
//                   End  File                   //
//===============================================//
//===============================================//
