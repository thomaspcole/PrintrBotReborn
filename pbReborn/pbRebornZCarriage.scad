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
    }
    
    //horizontal rod mount    
    translate([14,17,-5.5])
    difference(){
        translate([0,0,0])
        cube([14,15,12],center=true);
        
        translate([0,5,0])
        cube([15,10,1.5],center=true);
        
        translate([-8,-1,0])
        rotate([0,90,0])
        cylinder(d=8.25,h=20,$fn=30);
        
        translate([3,4.6,-10])
        cylinder(d=3,h=20,$fn=30);
        
        translate([-3,4.6,-10])
        cylinder(d=3,h=20,$fn=30);
    }
    
    translate([14,17,29.5])
    difference(){
        translate([0,0,0])
        cube([14,15,12],center=true);
        
        translate([0,5,0])
        cube([15,10,1.5],center=true);
        
        translate([-8,-1,0])
        rotate([0,90,0])
        cylinder(d=8.25,h=20,$fn=30);
        
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