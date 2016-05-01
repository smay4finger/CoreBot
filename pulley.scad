include <threads.scad>;

$fn = 50;

difference() {
    union() {
        translate([0, 0, 8]) 
            metric_thread(
                diameter = 20, 
                pitch = 1.2, 
                length = 10, 
                groove=true);
        rotate_extrude($fn=200)
            polygon(points=[
                [0, 0],
                [12,0],
                [12,6],
                [10,8],
                [ 8,8],
                [ 8,18],
                [10,18],
                [12,20],
                [12,21],
                [0, 21]
            ]);
        }
    
    // axis hole
    cylinder(r = 2.5, h=21);

    // nut hole 1
    translate([0, 0, 3])
        rotate([90, 0, 0])
            cylinder(r = 2.5/2, h=12);
    translate([6, -5.5/2, 0])
        rotate([0, 0, 90])
            cube([5.5, 2.5, 7]);
    
    // nut hole 2
    translate([0, 0, 3])
        rotate([90, 0, 90])
            cylinder(r = 2.5/2, h=12);
    translate([-5.5/2, -6, 0])
            rotate([0, 0, 0])
                cube([5.5, 2.5, 7]);
}