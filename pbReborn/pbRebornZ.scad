use <lib.scad>;

module zMotorFrame(){
    difference(){
        union(){
            translate([0,4,0])
            cube([40,45,5],center=true);
            
            translate([20,0,5])
            cube([17,12,7],center=true);
        }
        
        translate([-2,0,0])
        nemaHoles();
        
        
        
        //rod
        translate([17,0,0])
        cylinder(d=8.5,h=10,$fn=30);
        
        //cutout and clamp
        translate([25,0,5])
        cube([20,2,10],center=true);
        
        translate([24,10,5])
        rotate([90,0,0])
        cylinder(d=3,h=20,$fn=30);
        
        $fn=6;
        translate([24,6.1,5])
        rotate([90,0,0])
        cylinder(d=7.5,h=4);
    }
    
    //backFrame
    translate([0,24,12.5]){
        difference(){
            cube([40,5,20],center=true);
            
            translate([15,5,5])
            rotate([90,0,0])
            cylinder(d=3,h=10,$fn=30);
            
            translate([-15,5,5])
            rotate([90,0,0])
            cylinder(d=3,h=10,$fn=30);
            
            translate([15,5,-5])
            rotate([90,0,0])
            cylinder(d=3,h=10,$fn=30);
            
            translate([-15,5,-5])
            rotate([90,0,0])
            cylinder(d=3,h=10,$fn=30);
        }
    }

}

module topConnector(){
    
    difference(){
        translate([19.5,10.25,35])
        cube([18,32.5,7],center=true);
        
        //rod
        translate([17,0,30])
        cylinder(d=8.5,h=10,$fn=30);
        
        //cutout and clamp
        translate([25,0,35])
        cube([20,2,10],center=true);
        
        translate([24,10,35])
        rotate([90,0,0])
        cylinder(d=3,h=20,$fn=30);
        
        $fn=6;
        translate([24,6.1,35])
        rotate([90,0,0])
        cylinder(d=7.5,h=4);
        
        translate([25.8,8,35])
        cube([10,4,10],center=true);
        
        translate([7,5,35])
        rotate([0,90,0])
        cylinder(d=2.5,h=10,$fn=20);
        
        translate([7,15,35])
        rotate([0,90,0])
        cylinder(d=2.5,h=10,$fn=20);
    }
    
    translate([19.5,24,35])
    difference(){
        cube([18,5,20],center=true);
        
        translate([5,5,7])
        rotate([90,0,0])
        cylinder(d=3,h=10,$fn=30);
        
        translate([-5,5,7])
        rotate([90,0,0])
        cylinder(d=3,h=10,$fn=30);
        
        translate([5,5,-7])
        rotate([90,0,0])
        cylinder(d=3,h=10,$fn=30);
        
        translate([-5,5,-7])
        rotate([90,0,0])
        cylinder(d=3,h=10,$fn=30);
    }
}

module nutSlot(){
    cube([7,3,7],center=true);
    cube([3.5,10,7],center=true);
}



zMotorFrame();
topConnector();