$fn = 128;
tooth_radius = 1;
function cm(n) = n * 10;

module comb(nTeeth, combWidth, combLength) { 
   
	function generate_padding() = ((combWidth - (nTeeth*tooth_radius*2))/nTeeth) + (tooth_radius*2);
	function generate_space(i) = ((i/nTeeth)*combWidth) + generate_padding();
	
	translate([generate_padding(),0,combLength]){
		rotate([0,90,0]){
			cylinder(r=1, h=combWidth);		
		}
	}

	for (i = [1:nTeeth]){
		translate([generate_space(i), 0, 0])
			cylinder(r1=tooth_radius/2, r2=tooth_radius, h=combLength);									
	}
}

comb(10, cm(5), 10);
