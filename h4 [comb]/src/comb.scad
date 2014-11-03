$fn = 128;
tooth_radius = 1;
function cm(n) = n * 10;

module comb(nTeeth, combWidth, combLength) { 
   
	function generate_space(i) = (i/nTeeth)*combWidth;
	translate([0,0,combLength]){
		rotate([0,90,0]){
			cylinder(r=1, h=combWidth);		
		}
	}

	for (i = [0:nTeeth-1]){
		translate([generate_space(i) + (((combWidth - (nTeeth*(tooth_radius*2))) / nTeeth) + (tooth_radius*2)), 0, 0]){
			cylinder(r1=tooth_radius/2, r2=tooth_radius, h=combLength);
		}
	}
}

comb(10, cm(10), 10);