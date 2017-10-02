//printerMain

use <pbRebornZ.scad>
use <pbRebornZCarriage.scad>
use <pbRebornY.scad>

//min:
//max:
//range:
xPos = 0;

//min:
//max:
//range:
yPos = 0;

//min: 50
//max: 270
//range: 220mm
zPos = 50;

module printedParts(){
    translate([-135,0,0])
    zMotorFrame();
    
    mirror([1,0,0])
    translate([-135,0,0])
    zMotorFrame();
    
    translate([-135,0,280])
    topConnector();
    
    mirror([1,0,0])
    translate([-135,0,280])
    topConnector();
    
    translate([-135,0,zPos])
    leftCarriage(true);
    
    translate([135,0,zPos])
    rightCarriage(false);
    
    translate([0,0,-47.5])
    yFrameConnectors(); 
}


module metalParts(){
    color("Gray")
    cube([178,114,6],center=true);
    
    color("Silver")
    translate([-118,0,0])
    cylinder(d=8,h=320,$fn=60);
    
    color("Silver")
    translate([118,0,0])
    cylinder(d=8,h=320,$fn=60);
    
    color("Gray")
    translate([-137,0,20])
    cylinder(d=8,h=280,$fn=60);
    
    color("Gray")
    translate([137,0,20])
    cylinder(d=8,h=280,$fn=60);
    
    color("Silver")
    translate([-255/2,15,zPos-5.5])
    rotate([0,90,0])
    cylinder(d=8,h=255,$fn=60);
    
    color("Silver")
    translate([-255/2,-15,zPos-5.5])
    rotate([0,90,0])
    cylinder(d=8,h=255,$fn=60);
    
    color("Silver")
    translate([178/2-5,165/2,25-47.5])
    rotate([90,0,0])
    cylinder(d=8,h=165);
    
    color("Silver")
    translate([-178/2+5,165/2,25-47.5])
    rotate([90,0,0])
    cylinder(d=8,h=165);
    
    //nema
    color("Gray")
    translate([137,0,-26.5])
    cube([42,42,46],center=true);
    
    color("Gray")
    translate([-137,0,-26.5])
    cube([42,42,46],center=true);
}

module frame(){
    color("Tan")
    translate([0,33,140])
    difference(){
        cube([320,13,380],center=true);
        
        translate([0,0,-10])
        cube([200,20,360],center=true);
    }
    
    color("Tan")
    translate([0,20,-56.5])
    cube([320,270,13],center=true);
    
    color("Tan")
    translate([130,97,100])
    cube([13,115,300],center=true);
    
    color("Tan")
    translate([-130,97,100])
    cube([13,115,300],center=true);
    
}

printedParts();
metalParts();
frame();