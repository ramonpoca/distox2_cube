sn=100; // subdivision for cylinders
union() {
  difference() {
    union() {
      // handle U-shape
      cube([46, 31, 4]);
      translate([0,-4,0]) cube([46, 4, 20]);
      translate([0, 31, 0]) cube([46, 4, 12]);
      // prism for mounting plate
      translate([0,0,20]) rotate([0,90,0])
      linear_extrude(height = 46, center = false, convexity = 10, twist = 0)
      polygon([[0,0],[16,0],[0,0.457143]]);
    }
    // hole for leica fix
    translate([23, 0, 13]) rotate([90, 0, 0]) 
    cylinder(h=7, d1=6.2, d2=6.2, center=true, $fn=sn);
  }
  // handle shaft
  translate([28, 17.5, -30]) cylinder(h=30, d1=14, d2=14, $fn=2*sn);
  translate([28, 17.5, -66])
  union() {
    cylinder(h=36, d1=8, d2=8, $fn=sn);
    sphere(r=4, $fn=sn);
  }
}
