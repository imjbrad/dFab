$fn = 128;
	
cylinder(h=20, r1=10, r2=6);

translate([0,0,20])
	cylinder(h=20, r=6);
	
//how to translate relativley?
translate([0,6,2])
	rotate([atan(6/10), 0, 0])	
	cube([1,6,10], center=false);

translate([0,-6,2])
	rotate([atan(6/10), 0, 180])	
	cube([1,6,10], center=false);

translate([0,0,40])
	cylinder(h=6, r1=6, r2=0);









