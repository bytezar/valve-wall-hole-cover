include <Valve_Vars.scad>

difference()
{
	union()
	{
		linear_extrude(height=baseThickness,scale=scaleFactor)
		translate([-totalWidth/2,-totalWidth/2])
		square([totalWidth,totalWidth]);

		centerCube(outerWidth,totalHeight,0);
	}
	
	centerCube(innerWidth,totalHeight+2,-1);
}
