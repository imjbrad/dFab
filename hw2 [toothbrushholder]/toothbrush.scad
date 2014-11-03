$fn = 128;

difference() {
	union() {
		cube([60,60,40]);
		translate([0,0,40])
			cube([60, 20, 20]);	
	}

	translate([15, 30, 3]){
		rotate([10, 0, 0])
			cylinder(h=70, r=10);
				translate([30, 0, 0]){
					rotate([10, 0, 0])
						cylinder(h=70, r=10);
				}	
	}
}