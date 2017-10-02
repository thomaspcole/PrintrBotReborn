use <lib.scad>

module rods(){
    color("Silver"){
        translate([-100,15,-0])
        rotate([0,90,0])
        cylinder(d=8,h=200);
        
        translate([-100,-15,0])
        rotate([0,90,0])
        cylinder(d=8,h=200);
    }
    
    color("Gray"){
        //lm8uu
        translate([-25,15,0])
        rotate([0,90,0])
        cylinder(d=15.5,h=50);
        
        translate([-25,-15,0])
        rotate([0,90,0])
        cylinder(d=15.5,h=50);
    }
}

module xCarriage(){
    difference(){
        union(){
            translate([0,0,5])
            cube([48,55,15],center=true);
            
            translate([0,-29,5])
            cube([30,10,15],center=true);
            
            translate([0,-39.1,5])
            cube([30,10,15],center=true);
        }
        
        translate([20,0,0])
        cube([4,7,30],center=true);
        
        translate([-20,0,0])
        cube([4,7,30],center=true);
   
        translate([0,-34,3])
        cylinder(d=17,h=15);
        
        translate([0,-34,-3])
        cylinder(d=12,h=6.1);
        
        translate([11,-25,0])
        rotate([90,0,0])
        cylinder(d=3,h=20,$fn=30);
        
        translate([-11,-25,10])
        rotate([90,0,0])
        cylinder(d=3,h=20,$fn=30);
        
        translate([-11,-25,0])
        rotate([90,0,0])
        cylinder(d=3,h=20,$fn=30);
        
        translate([11,-25,10])
        rotate([90,0,0])
        cylinder(d=3,h=20,$fn=30);
        
        //lm8uu
        translate([-25,15,0])
        rotate([0,90,0])
        cylinder(d=15.5,h=50);
        
        translate([-25,-15,0])
        rotate([0,90,0])
        cylinder(d=15.5,h=50);
    }
    
}

xCarriage();
rods();