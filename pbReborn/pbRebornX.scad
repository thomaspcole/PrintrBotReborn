use <lib.scad>
use <e3d.scad>


module rods(){
    color("Silver"){
        translate([-100,24,-0])
        rotate([0,90,0])
        cylinder(d=8,h=200);
        
        translate([-100,-24,0])
        rotate([0,90,0])
        cylinder(d=8,h=200);
    }
    
    color("Gray"){
        //lm8uu
        translate([-25,24,0])
        rotate([0,90,0])
        cylinder(d=15.5,h=50);
        
        translate([-25,-24,0])
        rotate([0,90,0])
        cylinder(d=15.5,h=50);
    }
    
    color("Silver")
    translate([0,0,4.5])
    rotate([180,0,180])
    e3d();
}

module xCarriage(){
    difference(){
        union(){
            translate([0,0,5])
            cube([48,75,15],center=true);
            
            translate([0,0,-5.5]) 
            cube([25,25,5.8],center=true);
            
            
            translate([0,35,-20])
            rotate([0,0,-90])
            cube([5,20,60],center=true);
            
            translate([0,45,-50])
            rotate([0,0,90])
            cube([25,20,5],center=true);
        }
        
        //hotend clamp
        translate([0,0,-5.55])
        cube([30,.1,6],center=true);
        
        translate([0,0,-10])
        cylinder(d=12,h=6);
        
        translate([10,10,-10])
        cylinder(d=2.9,h=10,$fn=30);
        
        translate([10,-10,-10])
        cylinder(d=2.9,h=10,$fn=30);
        
        translate([-10,10,-10])
        cylinder(d=2.9,h=10,$fn=30);
        
        translate([-10,-10,-10])
        cylinder(d=2.9,h=10,$fn=30);
        
        //cutout for hotend
        translate([0,0,-5])
        cylinder(d=20,h=20);
        
        //cutout for inductiveSensor
        translate([0,47,-60])
        cylinder(d=12,h=20,$fn=60);
        
        //lm8uu
        translate([-25,24,0])
        rotate([0,90,0])
        cylinder(d=15.5,h=50);
        
        translate([-25,-24,0])
        rotate([0,90,0])
        cylinder(d=15.5,h=50);
    }
    
}

xCarriage();
rods();