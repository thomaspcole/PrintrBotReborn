use <pbRebornZ.scad>
use <lib.scad>

module leftCarriage(right){
    //mainBody
    difference(){
        union(){
            translate([14,0,12])
            cube([14,20,47],center=true);
            
            translate([0,0,-9])
            cube([25,20,5],center=true);
            
            if(right == true){
                translate([14,-13,13])
                cube([14,7,15],center=true);
                
                translate([20,12,10])
                cube([14,5,15],center=true);
            }
        }
        
        //threaded rod cutout
        translate([-2,0,-17]){
                cylinder(d=22,h=5);
                
                translate([0,0,5])
                cylinder(d=12.5,h=7,$fn=60);
                
                translate([8,0,5])
                cylinder(d=3,h=10,$fn=30);
                
                translate([-8,0,5])
                cylinder(d=3,h=10,$fn=30);
        }
        
        translate([17,0,-11.75])
        lm8uu();
        
        translate([17,0,12])
        lm8uu();
        
        if(right == true){
            //hole for belt bearing
            translate([13,-8,13])
            rotate([90,0,0])
            cylinder(d=5,h=10,$fn=30);
            
            //holes for limit switch
            translate([25,15,14.5])
            rotate([90,0,0])
            cylinder(d=2.5,h=10,$fn=30);
            
            //holes for limit switch
            translate([25,15,10-4.5])
            rotate([90,0,0])
            cylinder(d=2.5,h=10,$fn=30);
        }
    }
    
    //horizontal rod mount
    translate([13,-25,-5.5])
    difference(){
        translate([0,4,0])
        cube([12,24,12],center=true);
        
        translate([0,-5,0])
        cube([15,10,1.5],center=true);
        
        translate([-6.5,1,0])
        rotate([0,90,0])
        cylinder(d=8.25,h=15,$fn=30);
        
        translate([3,-4.6,-10])
        cylinder(d=3,h=20,$fn=30);
        
        translate([-3,-4.6,-10])
        cylinder(d=3,h=20,$fn=30);
    }
    
    translate([13,25,-5.5])
    difference(){
        translate([0,-5,0])
        cube([12,24,12],center=true);
        
        translate([0,5,0])
        cube([15,10,1.5],center=true);
        
        translate([-6.5,-1,0])
        rotate([0,90,0])
        cylinder(d=8.25,h=15,$fn=30);
        
        translate([3,4.6,-10])
        cylinder(d=3,h=20,$fn=30);
        
        translate([-3,4.6,-10])
        cylinder(d=3,h=20,$fn=30);
    }
    //end horizontal rod mount   
}

module rightCarriage(){
    mirror([1,0,0])
    leftCarriage(false);
    
    translate([30,0,-9]){
        cube([35,25,5],center=true);
        
        translate([0,-10,0])
        cube([42,5,5],center=true);
        
        translate([-33.5,-10.5,17])
        cube([35,4,15],center=true);
    }
    
    translate([30,-10,14])
    difference(){
        cube([42,5,42],center=true);
        
        rotate([90,0,0])
        nemaHoles();
    }
}

module rods(){
    union(){
        translate([-2,0,-20])
        cylinder(d=6,h=100);
        
        translate([17,0,-20])
        cylinder(d=8,h=100);
    }
    
    translate([120,0,0])
    mirror([1,0,0])
    union(){
        translate([-2,0,-20])
        cylinder(d=6,h=100);
        
        translate([17,0,-20])
        cylinder(d=8,h=100);
    }
    
    translate([5,15,-5.5])
    rotate([0,90,0])
    cylinder(d=8,h=100);
    
    translate([5,-15,-5.5])
    rotate([0,90,0])
    cylinder(d=8,h=100);
}

color("Silver")
*rods();

leftCarriage(true);

translate([120,0,0])
rightCarriage();