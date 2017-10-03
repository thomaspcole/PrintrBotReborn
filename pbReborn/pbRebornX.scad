use <lib.scad>
use <e3d.scad>


module rods(){
    color("Silver"){
        translate([-100,16,0])
        rotate([0,90,0])
        cylinder(d=8,h=200);
        
        translate([-100,16,35])
        rotate([0,90,0])
        cylinder(d=8,h=200);
    }
    
    color("Gray"){
        //lm8uu
        translate([-25,16,0])
        rotate([0,90,0])
        cylinder(d=15.5,h=50);
        
        translate([-25,16,35])
        rotate([0,90,0])
        cylinder(d=15.5,h=50);
    }
    
    //color("Silver")
    translate([0,-10,40])
    rotate([180,0,0])
    %e3d();
}

module xCarriage(){
    difference(){
        union(){
            translate([0,12,17])
            cube([48,15,60],center=true);
            
            translate([0,-8,30])
            cube([30,30,5.9],center=true);
        }
        
        //hotendMount
        translate([0,-10,27])
        cylinder(d=12.1,h=6);
        
        translate([0,-10,30])
        cube([35,.1,6],center=true);
        
        //lm8uu
        translate([-25,16,0])
        rotate([0,90,0])
        cylinder(d=15.5,h=50);
        
        translate([-25,16,35])
        rotate([0,90,0])
        cylinder(d=15.5,h=50);
        
    }
    
}

xCarriage();
rods();