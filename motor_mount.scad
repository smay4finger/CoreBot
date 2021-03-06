motor_mount();

module motor_mount() {

    $fn = 50;

    difference() {
        intersection() {
            rotate_extrude()
                polygon(points=[
                            [17, 0],
                            [36, 0],
                            [36, 2],
                            [32, 3],
                            [30, 27],
                            [17, 27],
                        ]);

            rotate([0, 0, 45])
                cylinder(r1 = 130, r2 = 58/2, h = 27,$fn=4);
        }

        rotate([0, 0, 0])
            translate([-13, 0, 4])
                cube([13*2, 40, 15]);

        // sewing holes
        for(a = [0:15:360]) {
            translate([sin(a) * 33, cos(a) * 33, 0])
                cylinder(r = 1, h = 10);
        }

        // NEMA motor
        translate([-43/2, -43/2, 25])
            cube([43, 43, 10]);


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
}