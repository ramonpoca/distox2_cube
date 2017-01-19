/// DistoX2 calibration handle v.2 enlagrer by Mykyta Kozlov

sn=100; // subdivision for cylinders

module key() {
  linear_extrude(height = 2.5, center = false, convexity = 10, twist = 0)
  square(8.05,true);
}

difference() {
  difference() {
    union() {
      cylinder(h=35, d1=14, d2=14, center=true, $fn=2*sn);
      translate([0,0,17.5]) key();
    }
    translate([0,0,-17.5]) key();
  }
  cylinder(h=42, d1=8, d2=8, center=true, $fn=2*sn);
}