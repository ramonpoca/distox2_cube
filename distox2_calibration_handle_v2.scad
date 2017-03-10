/// DistoX2 calibration handle v.2. by Mykyta Kozlov

sn=100; // subdivision for cylinders

module key() {
  linear_extrude(height = 3, center = false, convexity = 10, twist = 0)
  square(8.05,true);
}

module U_shape() {
  difference() {
  // handle U-shape
  rotate([90,0,90])
  linear_extrude(height = 46, center = false, convexity = 10, twist = 0)
  polygon([[-1,-1],[-1,20],[4+16*tan(1),20],[4,4],[35,4],[35,12],[40,12],[40,-1]]);
  // hole for leica fix
  translate([23, 0, 13]) rotate([90, 0, 0]) 
  cylinder(h=9, d1=6.35, d2=6.35, center=true, $fn=sn); // For 1/4-20 UNC
  }
}

difference() {
  union() {
    U_shape();
    // handle shaft
    translate([28, 21.5, -31]) cylinder(h=30, d1=14, d2=14, $fn=2*sn);
    // champher between U-shape and shaft
    translate([28, 21.5, -1])
    {
      rotate_extrude(angle = 360, convexity = 10, $fn = 2*sn)
      translate([7,0,0]) polygon([[0,0],[0,-8],[8,0]]);
    }
    // key to fix rotation step
    // translate([28, 21.5, -32.7]) key();
  }
  // Hole for 8mm main aluminium shaft
  translate([28, 21.5, -33])
  cylinder(h=40, d1=7.95, d2=7.95, $fn=sn);
}
