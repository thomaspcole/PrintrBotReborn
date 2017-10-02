module lm8uu(){
    cylinder(d=15.25,h=24);
}


module nemaHoles(){
    $fn=30;
    
    translate([31/2,31/2,-5])
    cylinder(d=3,h=10);
    
    translate([-31/2,31/2,-5])
    cylinder(d=3,h=10);
    
    translate([31/2,-31/2,-5])
    cylinder(d=3,h=10);
    
    translate([-31/2,-31/2,-5])
    cylinder(d=3,h=10);
    
    translate([0,0,-5])
    cylinder(d=25,h=10);
}