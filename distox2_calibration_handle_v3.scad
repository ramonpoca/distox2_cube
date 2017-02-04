/// DistoX2 calibration handle v.3. by Mykyta Kozlov

sn=100; // subdivision for cylinders

module U_shape_mount_holes() {
  translate([28, 21.5, 0])
  rotate([0,0,180-15]) {
    translate([14,0,0]) 
      cylinder(h=6, d1=3.2, d2=3.2, $fn=sn);
    rotate([0,0,120]) translate([14,0,0]) 
      cylinder(h=6, d1=3.2, d2=3.2, $fn=sn);
    rotate([0,0,-120]) translate([14,0,0])
      cylinder(h=6, d1=3.2, d2=3.2, $fn=sn);
  }
}

module U_shape() {
  difference() {
    // handle U-shape
    rotate([90,0,90])
      linear_extrude(height = 46, center = false, convexity = 10, twist = 0)
      polygon([[0,0],[0,20],[4+16*tan(1),20],[4,4],[35,4],[35,12],[39,12],[39,0]]);
    // hole for leica fix
    translate([23, 0, 13]) rotate([90, 0, 0]) 
      cylinder(h=9, d1=6.35, d2=6.35, center=true, $fn=sn); // For 1/4-20 UNC
    // main axis hole  
    translate([28, 21.5, -1.5])
      cylinder(h=7, d1=8, d2=8, $fn=sn);
    
    U_shape_mount_holes();
  }
}

module Rigidity_Rib() {
  linear_extrude(height=8.25, center=false, convexity=10, twist=0)
  polygon([[0,0],[0,1],[11,2.5],[13.5,5],[15,14],[16,14],[16,0]]);
}

module mount_legs() {
  rotate([0,0,15]) {
    translate([14,0,0]) 
      cylinder(h=3.74, d1=9, d2=7.5, center=false, $fn=sn);
    rotate([0,0,120]) translate([14,0,0]) 
      cylinder(h=3.74, d1=9, d2=7.5, center=false, $fn=sn);
    rotate([0,0,-120]) translate([14,0,0])
      cylinder(h=3.74, d1=9, d2=7.5, center=false, $fn=sn);
  }
}

module mount_leg_holes() {
  rotate([0,0,15]) {
    translate([14,0,0]) 
      cylinder(h=8, d1=4, d2=4, center=true, $fn=sn);
    rotate([0,0,120]) translate([14,0,0])
      cylinder(h=8, d1=4, d2=4, center=true, $fn=sn);
    rotate([0,0,-120]) translate([14,0,0])
      cylinder(h=8, d1=4, d2=4, center=true, $fn=sn);
  }
}

module axis_RigidityRib() {
  difference() {
    union() {
      rotate_extrude(angle = 360, convexity = 10, $fn = 2*sn)
      polygon([[4,0],[14,0],[7,7],[7,40],[4,40]]);
      
      mount_legs();
    }
    mount_leg_holes();
  }
}

module handle_mount() {
  translate([28, -21.5, 0])
  rotate([0,180,0])
  union() {
    U_shape();
    translate([3.75, 4, 20]) rotate([0, 90, 0])
    Rigidity_Rib();
    translate([22+8.25+3.75, 4, 20]) rotate([0, 90, 0])
    Rigidity_Rib();
  }
}

handle_mount();
axis_RigidityRib();
