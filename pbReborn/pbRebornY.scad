use <lib.scad>

//bed mockup
color("Gray")
translate([0,0,50])
cube([178,114,6],center=true);

module yFrameConnector(){
    translate([0,0,15])
    difference(){
        cube([18,10,30],center=true);
        
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
        cube([30,10,5],center=true);
        
        translate([12.5,0,-5])
        cylinder(d=3,h=10,$fn=30);
        
        translate([-12.5,0,-5])
        cylinder(d=3,h=10,$fn=30);
    }
}

module motorAndIdeler(){
    //motor
    translate([-15,110,42/2])
    rotate([0,-90,0])
    difference(){
        union(){
            cube([42,42,5],center=true);
            
            translate([-42/2,0,42/2-2.5])
            rotate([0,90,0])
            cube([42,60,5],center=true);
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
    
    translate([0,-100,30/2])
    difference(){
        union(){
            cube([19,15,25],center=true);
            
            translate([0,0,-30/2])
            cube([35,15,5],center=true);
        }
        
        translate([0,0,5]){
            cube([13,20,20],center=true);
            
            translate([-10,0,0])
            rotate([0,90,0])
            cylinder(d=3,h=50,$fn=20);
        }
        
        translate([13.5,0,-20])
        cylinder(d=3,h=10,$fn=30);
        
        translate([-13.5,0,-20])
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
//    color("Tan")
//    hull(){
//        translate([87,55,35])
//        cylinder(d=15,h=13);
//        
//        translate([-87,-55,35])
//        cylinder(d=15,h=13);
//    }
//    
//    color("Tan")
//    hull(){
//        translate([-87,55,35])
//        cylinder(d=15,h=13);
//        
//        translate([87,-55,35])
//        cylinder(d=15,h=13);
//    }
    
    difference(){
        translate([84,0,33])
        cube([25,55,5],center=true);
        
        translate([84,0,33])
        cube([15,48.5,6],center=true);
         
        translate([84,24,25])
        rotate([90,0,0])
        %cylinder(d=15,h=48);  
    }
}

module yFrameConnectors(){
    translate([178/2-5,165/2-5,0])
    rotate([0,0,180])
    yFrameConnector();
    
    translate([178/2-5,-165/2+5,0])
    rotate([0,0,180])
    yFrameConnector();
    
    translate([-178/2+5,165/2-5,0])
    yFrameConnector();
    
    translate([-178/2+5,-165/2+5,0])
    yFrameConnector();
    
    motorAndIdeler();
    bedConnector();
}

rods();
yFrameConnectors();