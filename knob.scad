// Knob for an Atari-style paddle game controller
// Est. dimensions: 2"x1.5"
//
RESOLUTION = 50;

// main body
cylinder(r=25,h=30, $fn=RESOLUTION);

// top inner ring
translate([0,0,30]){
    difference(){
        cylinder(r=22,h=1,$fn=RESOLUTION);
        translate([0,0,-1]){
            cylinder(r=21,h=3,$fn=RESOLUTION);
        }
    }
}

// bottom ring
translate([0,0,15]){
    cylinder(r=26.5,h=2,$fn=RESOLUTION);
}

// knurling
itr=40;
for(rotz = [0:360/itr:360]){
    rotate(rotz){
        translate([24.9,-1,15]){
            union(){
                cube([1.5,2,14]);
                translate([-.5,2,14]){
                    rotate([90,0,0]){
                        cylinder(r=2,h=2,$fn=RESOLUTION);
                    }
                }
            }
        }
    }
}
