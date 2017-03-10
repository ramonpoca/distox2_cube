/// DistoX2 calibration Truncated Cuboctahedron by Mykyta Kozlov
// Polyhedron data exported from DistoX_Cube_shape_variants.nb
polyhedronPts = [[-1,1+sqrt(2),-1-2*sqrt(2)],[-1,1+sqrt(2),1+2*sqrt(2)],[-1,-1-sqrt(2),-1-2*sqrt(2)],[-1,-1-sqrt(2),1+2*sqrt(2)],[-1,-1-2*sqrt(2),1+sqrt(2)],[-1,-1-2*sqrt(2),-1-sqrt(2)],[-1,1+2*sqrt(2),1+sqrt(2)],[-1,1+2*sqrt(2),-1-sqrt(2)],[1,1+sqrt(2),-1-2*sqrt(2)],[1,1+sqrt(2),1+2*sqrt(2)],[1,-1-sqrt(2),-1-2*sqrt(2)],[1,-1-sqrt(2),1+2*sqrt(2)],[1,-1-2*sqrt(2),1+sqrt(2)],[1,-1-2*sqrt(2),-1-sqrt(2)],[1,1+2*sqrt(2),1+sqrt(2)],[1,1+2*sqrt(2),-1-sqrt(2)],[1+sqrt(2),-1,-1-2*sqrt(2)],[1+sqrt(2),-1,1+2*sqrt(2)],[1+sqrt(2),1,-1-2*sqrt(2)],[1+sqrt(2),1,1+2*sqrt(2)],[1+sqrt(2),-1-2*sqrt(2),-1],[1+sqrt(2),-1-2*sqrt(2),1],[1+sqrt(2),1+2*sqrt(2),-1],[1+sqrt(2),1+2*sqrt(2),1],[-1-sqrt(2),-1,-1-2*sqrt(2)],[-1-sqrt(2),-1,1+2*sqrt(2)],[-1-sqrt(2),1,-1-2*sqrt(2)],[-1-sqrt(2),1,1+2*sqrt(2)],[-1-sqrt(2),-1-2*sqrt(2),-1],[-1-sqrt(2),-1-2*sqrt(2),1],[-1-sqrt(2),1+2*sqrt(2),-1],[-1-sqrt(2),1+2*sqrt(2),1],[-1-2*sqrt(2),-1,1+sqrt(2)],[-1-2*sqrt(2),-1,-1-sqrt(2)],[-1-2*sqrt(2),1,1+sqrt(2)],[-1-2*sqrt(2),1,-1-sqrt(2)],[-1-2*sqrt(2),1+sqrt(2),-1],[-1-2*sqrt(2),1+sqrt(2),1],[-1-2*sqrt(2),-1-sqrt(2),-1],[-1-2*sqrt(2),-1-sqrt(2),1],[1+2*sqrt(2),-1,1+sqrt(2)],[1+2*sqrt(2),-1,-1-sqrt(2)],[1+2*sqrt(2),1,1+sqrt(2)],[1+2*sqrt(2),1,-1-sqrt(2)],[1+2*sqrt(2),1+sqrt(2),-1],[1+2*sqrt(2),1+sqrt(2),1],[1+2*sqrt(2),-1-sqrt(2),-1],[1+2*sqrt(2),-1-sqrt(2),1]];
polyhedronFaces = [[43,41,16,18],[13,5,2,10],[33,35,26,24],[7,15,8,0],[19,17,40,42],[11,3,4,12],[25,27,34,32],[1,9,14,6],[44,22,23,45],[38,28,29,39],[47,21,20,46],[37,31,30,36],[8,18,16,10,2,24,26,0],[1,27,25,3,11,17,19,9],[40,47,46,41,43,44,45,42],[34,37,36,35,33,38,39,32],[14,23,22,15,7,30,31,6],[4,29,28,5,13,20,21,12],[45,23,14,9,19,42],[34,27,1,6,31,37],[40,17,11,12,21,47],[39,29,4,3,25,32],[43,18,8,15,22,44],[36,30,7,0,26,35],[46,20,13,10,16,41],[33,24,2,5,28,38]];
octagonVtx=[[1,1+sqrt(2)],[1+sqrt(2),1],[1+sqrt(2),-1],[1,-1-sqrt(2)],[-1,-1-sqrt(2)],[-1-sqrt(2),-1],[-1-sqrt(2),1],[-1,1+sqrt(2)]];


hf = 48; // subdivision hole quadrics
da = 54.735610317245346; // angle of main cube diagonal in degrees
scale55mm = 55*(2*sqrt(2)-1)/14; // scale factor to be 55 mm in size

module mount_washers() {
  linear_extrude(height=6,center=false,convexity=10,twist=0)
  intersection() {
    rotate([0,0,22.5]) {
      translate([-15,0]) circle(d=12,$fn=hf);
      translate([15,0])  circle(d=12,$fn=hf);
    }
    scale(scale55mm) polygon(octagonVtx);
  }
}

module hole() {
  cylinder(90, 4, 4, true, $fn=hf); 
}

difference() {
  /// polyhedron with displacement washers
  union() {
    scale(scale55mm) polyhedron (polyhedronPts, polyhedronFaces);
    translate([0,0,scale55mm*(1+2*sqrt(2))]) mount_washers();
  }

  /// main holes
  hole();
  rotate ([90,0,0]) hole();
  rotate ([0,90,0]) hole();
  
  /// diagonal holes
  rotate ([0, da, 45]) hole();
  rotate ([0, da, 135]) hole();
  rotate ([0, da, -45]) hole();
  rotate ([0, da, -135]) hole();
    
  /// additional to standard cube direction holes
  
  // horisontal
  rotate ([90,0,45]) hole();
  rotate ([90,0,-45]) hole();
  
  // diagonal
  rotate ([0,45,0]) hole();
  rotate ([0,-45,0]) hole();
  rotate ([45,0,0]) hole();
  rotate ([-45,0,0]) hole();
  
  // mount holes 
  rotate([0,0,22.5])
  {
     translate([-15,0,3])
     cylinder(34, d1=5, d2=5, true, $fn=hf);
  
     translate([15,0,3])
     cylinder(34, d1=5, d2=5, true, $fn=hf);
  }
  
}
