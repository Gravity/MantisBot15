include <configuration.scad>;

module mount() {
	difference() {
		union() {
			translate([0,0,-1.50])
				hull(){
					translate([0,-3.25,0])
						cylinder(r=4.25, h=extrusion+thickness, center=true, $fn=20);
					translate([0,3.75,0])
						cube([8.5, 7.5, extrusion+thickness], center=true);
				}
			translate([0,0,-9])
					hull() {
						translate([-21,0,0])
							cylinder(r=extrusion/2, h=thickness, center=true, $fn=20);
						translate([-7.5,0,0])
							cube([extrusion,extrusion,thickness], center=true);
					}
		}
		translate([-21,0,-9])
			cylinder(r=m3_wide_radius, h=10, center=true, $fn=12);
		translate([0,-3.25,7])
			cylinder(r=2.5/2, h=20, center=true, $fn=12);
	}
}

translate([-10.5,0,9+thickness/2])
mirror([1,0,0]){
mount();
}