use <motor_mount.scad>;
use <pulley.scad>;

// table
//square([1500, 2000]);

translate([50, 50]) {
    motor_mount();
    translate([0, 0, 1]) pulley();
}

translate([1500-50, 50]) {
    motor_mount();
    translate([0, 0, 1]) pulley();
}