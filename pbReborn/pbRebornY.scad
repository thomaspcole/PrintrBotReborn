use <lib.scad>

//bed mockup
color("Gray")
translate([0,0,65])
cube([178,114,6],center=true);

module yFrameConnector(){
    translate([0,0,15])
    difference(){
        cube([18,7,30],center=true);
        
        translate([0,7,10])
        rotate([90,0,0])
        cylinder(d=8,h=15,$fn=30);
        
        translate([5,0,10])
        cube([10,15,1.5],center=true);
        
        translate([6.5,0,0])
        cylinder(d=3,h=20,$fn=30);
        
        translate([6.5,0,3])
        rotate([0,0,30])
        cylinder(d=7.5,h=4,$fn=6);
        
        translate([8,0,5])
        cube([3.25,7.5,4],center=true);
    }

    difference(){
        cube([30,7,5],center=true);
        
        translate([12.5,0,-5])
        cylinder(d=3,h=10,$fn=30);
        
        translate([-12.5,0,-5])
        cylinder(d=3,h=10,$fn=30);
    }
}

module motorAndIdeler(){
    //motor
    translate([-15,110,42/2+10])
    rotate([0,-90,0])
    difference(){
        union(){
            translate([-5,0,0])
            cube([47,42,5],center=true);
            
            translate([-42/2-9,0,42/2-2.5])
            rotate([0,90,0])
            cube([42,60,7],center=true);
        }
        
        nemaHoles();
        
        translate([-25,-25,35])
        rotate([0,90,0])
        cylinder(d=3,h=10, $fn=30);
        
        translate([-25,-25,3])
        rotate([0,90,0])
        cylinder(d=3,h=10, $fn=30);
        
        translate([-25,25,35])
        rotate([0,90,0])
        cylinder(d=3,h=10, $fn=30);
        
        translate([-25,25,3])
        rotate([0,90,0])
        cylinder(d=3,h=10, $fn=30);
    }
    
    translate([0,-100,30/2+10])
    difference(){
        union(){
            translate([0,0,-5])
            cube([19,15,35],center=true);
            
            translate([0,0,-30/2-10])
            cube([35,15,5],center=true);
        }
        
        translate([0,0,5]){
            cube([13,20,25],center=true);
            
            translate([-10,0,0])
            rotate([0,90,0])
            cylinder(d=3,h=50,$fn=20);
        }
        
        translate([13.5,0,-30])
        cylinder(d=3,h=10,$fn=30);
        
        translate([-13.5,0,-30])
        cylinder(d=3,h=10,$fn=30);
    }
}

module rods(){
    color("Silver")
    translate([178/2-5,165/2,25])
    rotate([90,0,0])
    cylinder(d=8,h=165);
    
    color("Silver")
    translate([-178/2+5,165/2,25])
    rotate([90,0,0])
    cylinder(d=8,h=165);
}

module bedConnector(){
    difference(){
        union(){
            translate([84,0,33])
            cube([35,55,5],center=true);
            
            translate([84,-30,40.5])
            cube([35,5,20],center=true);
            
            translate([84,0,48])
            cube([20,120,5],center=true);
            
            translate([84,30,40.5])
            cube([35,5,20],center=true);
        }
        
        translate([84,0,33])
        cube([15,48.5,6],center=true);
        
        //holes for zipties 
        translate([71,20,33])
        cube([3,5,20],center=true); 
        
        translate([71,7,33])
        cube([3,5,20],center=true);
        
        translate([71,-7,33])
        cube([3,5,20],center=true);
        
        translate([71,-20,33])
        cube([3,5,20],center=true);
        
        translate([97,20,33])
        cube([3,5,20],center=true);
        
        translate([97,7,33])
        cube([3,5,20],center=true);
        
        translate([97,-7,33])
        cube([3,5,20],center=true);
        
        translate([97,-20,33])
        cube([3,5,20],center=true);
    }
    
    difference(){
        hull(){
            translate([84,40,45.5])
            cylinder(d=12,h=5);
            
            translate([5.05,10,48.5])
            cube([10,20,5],center=true);
        }
        
        translate([2,15,48])
        cube([4,3,7],center=true);
    }
    
    difference(){
        hull(){
            translate([84,-40,45.5])
            cylinder(d=12,h=5);
            
            translate([5.05,-10,48.5])
            cube([10,20,5],center=true);
        }
        
        translate([2,-15,48])
        cube([4,3,7],center=true);
    }
}

module yFrameConnectors(yPos){
    translate([178/2-5,165/2-3.5,0])
    rotate([0,0,180])
    yFrameConnector();
    
    translate([178/2-5,-165/2+3.5,0])
    rotate([0,0,180])
    yFrameConnector();
    
    translate([-178/2+5,165/2-3.5,0])
    yFrameConnector();
    
    translate([-178/2+5,-165/2+3.5,0])
    yFrameConnector();
    
    translate([0,yPos,0])    
    bedConnector();
    
    translate([0,yPos,0])
    mirror([1,0,0])
    bedConnector();
    
    motorAndIdeler();

}

rods();
yFrameConnectors();