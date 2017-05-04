sn=100;
difference() {
  cylinder(h=6, d1=10.5, d2=10.5, center=true, $fn=sn);
  cylinder(h=7, d1=5, d2=5, center=true, $fn=sn);
  
  rotate([90,0,0])
  cylinder(h=12, d1=2, d2=2, center=true, $fn=sn);
}