intersection(){
	import("model-2_fixed.stl");
	for (i = [0:9]){
		translate([60, 0, (i*80)-160]){
	cylinder(h=40, r=300);
		}		
	}					
}