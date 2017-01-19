/// DistoX2 calibration cube by Mykyta Kozlov

hf = 48; // subdivision hole quadrics
rf = 1000; // subdivision for round edges
da = 54.735610317245346; // angle of main cube diagonal

module hole() {
  cylinder (90, 4, 4, true, $fn=hf);
};

module edgeround() {
  cylinder(55, 35.75, 35.75, true, $fn=rf);
}

module cornercut() {
  cube([68.2, 100, 100], true);
}

intersection() {
  difference() {
    // main cube
    cube(55,true); 
    // main holes
    hole();
    rotate ([90,0,0]) hole();
    rotate ([0,90,0]) hole();
    // diagonal holes
    rotate ([0, da, 45]) hole();
    rotate ([0, da, 135]) hole();
    rotate ([0, da, -45]) hole();
    rotate ([0, da, -135]) hole();  
  }
  // round cube edges
  edgeround();
  rotate ([90, 0, 0]) edgeround();
  rotate ([0, 90, 0]) edgeround();
  // cut cube vertices
  rotate ([0, 45, 45]) cornercut();
  rotate ([0, -45, 45]) cornercut();
  rotate ([0, 45, -45]) cornercut();
  rotate ([0, -45, -45]) cornercut();
}
