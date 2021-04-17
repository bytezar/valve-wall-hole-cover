innerHeight=20;
outerWidth=70;
latchWidth=15;

baseThickness=2;
wallThickness=2.4;
backgroundLatchThickness=4;

pipeDiameter=28;

wallSpace=0.4;

totalWidth=outerWidth+2*latchWidth;
innerWidth=outerWidth-2*wallThickness;
totalHeight=innerHeight+baseThickness;
scaleFactor=(totalWidth+2*baseThickness)/totalWidth;

backgroundLatchWidth=innerWidth-2*wallSpace;

module centerCube(w,h,z)
{
  w2=w/2;
  translate([-w2,-w2,z])
  cube([w,w,h]);
}
