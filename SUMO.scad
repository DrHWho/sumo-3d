// Sumo Wrestler by Harrison Bevan

$fn=72;

// Body
translate([0,0,0]) scale([1.2,1,1.2]) sphere(30);



// Head, Bun and hole
difference() {
    union () {
        translate([0,15,60]) scale([1,1,1]) sphere(10);
        // Head
        translate([0,0,45]) scale([1,1,1]) sphere(20);
    }
    translate([-50,15,60]) rotate([0,90,0]) cylinder(100,3.5,3.5,[0,0,0]);
}

// Belt
translate([0,0,-5]) scale([1.2,1,1.5]) cylinder(8,34,34,[0,0,0]);
difference() {
    translate([-7,0,0]) rotate([0,90,0])  scale([1.2,1,1]) cylinder(14,34,34,[0,0,0]);
    translate([-75,-75,7]) cube(150);
}


// Arm
mirror([0,0,0]) translate([-35,0,5]) rotate([0,45,0]) scale([1,1,2]) sphere(15);
mirror([1,0,0]) translate([-35,0,5]) rotate([0,45,0]) scale([1,1,2]) sphere(15);

// leg
mirror([0,0,0]) translate([-22,0,-20]) rotate([0,0,0]) scale([1,1.3,1.5]) sphere(15);
mirror([1,0,0]) translate([-22,0,-20]) rotate([0,0,0]) scale([1,1.3,1.5]) sphere(15);

// Foot
mirror([0,0,0]) translate([-22,-5,-38]) rotate([0,0,0]) scale([0.8,1.3,0.5]) sphere(15);
mirror([1,0,0]) translate([-22,-5,-38]) rotate([0,0,0]) scale([0.8,1.3,0.5]) sphere(15);

// Base
translate([0,0,-48]) scale([1,1,1]) cylinder(7,50,50,[0,0,0]);
