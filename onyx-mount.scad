include <configuration.scad>;

module mount() {
	difference() {
		union() {
			//cube([15,5,20],center=true);
			cube(extrusion, center=true);
			translate([0,-extrusion/2-thickness/2,-extrusion/2])
				cube([extrusion,thickness,extrusion*2], center=true);
		}
		translate([0,-9,-extrusion]) rotate([0,90,90])
			cylinder(r=m3_wide_radius, h=10, center=true, $fn=12);
		translate([0,-4,7])
			cylinder(r=2.5/2, h=20, center=true, $fn=12);
	}
}

mount();