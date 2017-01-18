/// DistoX2 calibration cube by Mykyta Kozlov

hf = 48; // subdivision hole quadrics
rf = 1000; // subdivision for round edges
da = 54.735610317245346; // angle of main cube diagonal
intersection() {
  difference() {
    cube(55,true); // main cube
    // main holes
    cylinder(55, 4, 4, true, $fn=hf);
    rotate ([90,0,0]) cylinder (55, 4, 4, true, $fn=hf);
    rotate ([0,90,0]) cylinder (55, 4, 4, true, $fn=hf);
    // diagonal holes
    rotate ([0, da, 45]) cylinder (90, 4, 4, true, $fn=hf);
    rotate ([0, da, 135]) cylinder (90, 4, 4, true, $fn=hf);
    rotate ([0, da, -45]) cylinder (90, 4, 4, true, $fn=hf);
    rotate ([0, da, -135]) cylinder (90, 4, 4, true, $fn=hf);  
  }
  // round cube edges
  cylinder(55, 35.75, 35.75, true, $fn=rf);
  rotate ([90, 0, 0]) cylinder (55, 35.75, 35.75, true, $fn=rf);
  rotate ([0, 90, 0]) cylinder (55, 35.75, 35.75, true, $fn=rf);
  // cut cube vertices
  rotate ([0, 45, 45]) cube([68.2, 100, 100], true);
  rotate ([0, -45, 45]) cube([68.2, 100, 100], true);
  rotate ([0, 45, -45]) cube([68.2, 100, 100], true);
  rotate ([0, -45, -45]) cube([68.2, 100, 100], true);
}
