//printerMain

use <pbRebornZ.scad>
use <pbRebornZCarriage.scad>
use <pbRebornY.scad>
use <pbRebornX.scad>
use <e3d.scad>

//min:~-83
//max: ~83
//range: 166mm
xPos = 0;

//min: ~-50
//max: ~50
//range: 100mm
yPos = 0;

//min: 50
//max: 265
//range: 215mm
zPos = 50;

module printedParts(){
    translate([-135,10,0])
    zMotorFrame();
    
    mirror([1,0,0])
    translate([-135,10,0])
    zMotorFrame();
    
    translate([-135,10,280])
    topConnector();
    
    mirror([1,0,0])
    translate([-135,10,280])
    topConnector();
    
    translate([-135,10,zPos])
    leftCarriage(true);
    
    translate([135,10,zPos])
    rightCarriage(false);
    
    translate([0,0,-47.5])
    yFrameConnectors(yPos); 
    
    translate([xPos, 10,zPos-5])
    xCarriage();
}


module metalParts(){
    color("Gray")
    translate([0,yPos,15])
    cube([178,114,6],center=true);
    
    color("Silver")
    translate([-118,10,0])
    cylinder(d=8,h=320,$fn=60);
    
    color("Silver")
    translate([118,10,0])
    cylinder(d=8,h=320,$fn=60);
    
    color("Gray")
    translate([-137,10,20])
    cylinder(d=8,h=280,$fn=60);
    
    color("Gray")
    translate([137,10,20])
    cylinder(d=8,h=280,$fn=60);
    
    color("Silver")
    translate([-255/2,26,zPos-5.5])
    rotate([0,90,0])
    cylinder(d=8,h=255,$fn=60);
    
    color("Silver")
    translate([-255/2,26,zPos+29.5])
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
    translate([137,10,-26.5])
    cube([42,42,46],center=true);
    
    color("Gray")
    translate([-137,10,-26.5])
    cube([42,42,46],center=true);
    
    
    color("Silver")
    translate([xPos,0,zPos+35])
    rotate([180,0,0])
    e3d();
}

module frame(){
    color("Tan")
    translate([0,43,140])
    difference(){
        cube([320,13,380],center=true);
        
        translate([0,0,-10])
        cube([210,20,360],center=true);
    }
    
    color("Tan")
    translate([0,20,-56.5])
    cube([320,270,13],center=true);
    
    color("Tan")
    translate([145,102,100])
    cube([13,105,300],center=true);
    
    color("Tan")
    translate([-145,102,100])
    cube([13,105,300],center=true);
    
}

printedParts();
metalParts();
frame();