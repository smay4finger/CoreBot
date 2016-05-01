$fn = 50;

difference() {
    intersection() {
        rotate_extrude()
            polygon(points=[
                        [17, 0],
                        [36, 0],
                        [32, 2],
                        [30, 27],
                        [ 0, 27],
                        [ 0, 23],
                        [17, 23],
                    ]);
    
        rotate([0, 0, 45])
            cylinder(r1 = 130, r2 = 58/2, h = 27,$fn=4);
    }

    rotate([0, 0, 0])
        translate([-17, 0, 4])
            cube([17*2, 40, 10]);

    // sewing holes
    for(a = [0:15:360]) {
        translate([sin(a) * 33, cos(a) * 33, 0])
            cylinder(r = 1, h = 10);
    }

    // NEMA motor
    translate([-43/2, -43/2, 25])
        cube([43, 43, 10]);

    // NEMA axis hole
    translate([0, 0, 0])
        cylinder(r = 22/2, h = 31);

    // NEMA mounting holes
    translate([+31/2, +31/2, 0]) {
        cylinder(r = 3/2, h = 30);
        cylinder(r = 7/2, h = 14);
    }
    translate([-31/2, +31/2, 0]) {
        cylinder(r = 3/2, h = 30);
        cylinder(r = 7/2, h = 14);
    }
    translate([+31/2, -31/2, 0]) {
        cylinder(r = 3/2, h = 30);
        cylinder(r = 7/2, h = 14);
    }
    translate([-31/2, -31/2, 0]) {
        cylinder(r = 3/2, h = 30);
        cylinder(r = 7/2, h = 14);
    }
}