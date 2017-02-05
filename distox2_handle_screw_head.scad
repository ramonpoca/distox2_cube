/// DistoX2 calibration handle screw head

sn=50;

difference() {
  union() {
    translate([0,0,4.9]) cylinder(h=1.5, d1=16,d2=14, center=false, $fn=sn);
    cylinder(h=10, d1=18,d2=18, center=true, $fn=sn);
  }
  cylinder(h=15, d1=6,d2=6, center=true, $fn=sn);
  
  rotate([90,0,0]) cylinder(h=20, d1=2.5,d2=2.5, center=true, $fn=sn);
}