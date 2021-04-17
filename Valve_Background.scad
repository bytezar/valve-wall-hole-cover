include <Valve_Vars.scad>

difference()
{
	union()
	{
		centerCube(outerWidth,baseThickness,0);
		
		translate([0,0,baseThickness])
		latch();
	}
	
	translate([0,0,-1])
	cylinder(d=pipeDiameter,h=baseThickness+2,$fn=64);
}

module latch()
{
	w2=backgroundLatchWidth/2;
	for(t=[[0,-1,-1],[90,1,-1],[180,1,1],[270,-1,1]])
	translate([t[1]*w2,t[2]*w2,0])
	rotate([0,0,t[0]])
	linear_extrude(height=backgroundLatchThickness,scale=[0,1])
	square([backgroundLatchThickness,backgroundLatchWidth]);
}
