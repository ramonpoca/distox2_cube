/// DistoX2 calibration handle by Mykyta Kozlov

sn=100; // subdivision for cylinders
union() {
  difference() {
    // handle U-shape
    rotate([90,0,90])
    linear_extrude(height = 46, center = false, convexity = 10, twist = 0)
    polygon([[0,0],[0,20],[4.457143,20],[4,4],[35,4],[35,12],[39,12],[39,0]]);
    // hole for leica fix
    translate([23, 0, 13]) rotate([90, 0, 0]) 
    cylinder(h=9, d1=6.2, d2=6.2, center=true, $fn=sn);
  }
  // handle shaft
  translate([28, 21.5, -30]) cylinder(h=30, d1=14, d2=14, $fn=2*sn);
  translate([28, 21.5, -66])
  union() {
    cylinder(h=36, d1=8, d2=8, $fn=sn);
    sphere(r=4, $fn=sn);
  }
  // champher between U-shape and shaft
  translate([28, 21.5, 0])
  {
    rotate_extrude(angle = 360, convexity = 10, $fn = 2*sn)
    translate([7,0,0]) polygon([[0,0],[0,-4],[4,0]]);
  }
}
