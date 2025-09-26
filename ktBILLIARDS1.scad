//
// ktBILLIARDS1
//
//

gap1 = 0.002;
gap2 = 0.004;
th = 2;

R=57;
R2=8;
R3=4;
H=R/3;

X=96-1;
Y=486/3;
Z=15;
F1=35-1;
F2=8-1;



difference()
{
    union()
    {
        /*
        translate([0, 0, H]) cylinder(h=R3, r=R/3*1.2, $fn=100);
        translate([-R3/2, -R, H]) cube([R3, R*2, R3]);
        translate([0, -R, -R/2]) cylinder(h=H+R3+R/2, r=R3/2, $fn=100);
        translate([0, R, -R/2]) cylinder(h=H+R3+R/2, r=R3/2, $fn=100);
        */
        
        /*
        translate([0, 0, H]) cylinder(h=R3, r=R/3*1.2, $fn=100);
        translate([-R3/2, -R, H]) cube([R3, R*2, R3]);
        translate([0, -R, 0]) cylinder(h=H+R3, r=R3/2, $fn=100);
        translate([0, R, 0]) cylinder(h=H+R3, r=R3/2, $fn=100);
        translate([0, -R, 0]) sphere(R2/2, $fn=100);
        translate([0, R, 0]) sphere(R2/2, $fn=100);
        */


        /*
        translate([0, 0, H]) cylinder(h=th, r=R/3*1.2, $fn=100);
        translate([-R3/2, -R, H]) cube([R3, R*2, th]);
        translate([0, -R, H]) rotate([0, 0, -90]) cylinder(h=th, r=R2*2, $fn=3);
        translate([0, R, 0]) cylinder(h=H+th, r=R3/2, $fn=100);
        translate([0, R, 0]) sphere(R2/2, $fn=100);
        */
        
        translate([0, 0, H]) cylinder(h=th, r=R/3*1.2, $fn=100);
        translate([-R3/2, -R, H]) cube([R3, R*2, th]);
        translate([0, -R, -R/2]) cylinder(h=H+th+R/2, r=R3/2, $fn=100);
        translate([0, R, -R/2]) cylinder(h=H+th+R/2, r=R3/2, $fn=100);
        translate([0, -R, -R/2]) cylinder(h=R2, r1=R3*2, r2=0, $fn=100);
        translate([0, R, -R/2]) cylinder(h=R2, r1=R3*2, r2=0, $fn=100);
        


    }
    #sphere(R/2, $fn=100); 
}








module futa()
{
    translate([0, 0, 0]) cylinder(h=13, r=F1/2, $fn=100);
    
    translate([-22, 0, 0]) cylinder(h=13, r=F2/2, $fn=100);
    
    translate([22, 0, 0]) cylinder(h=13, r=F2/2, $fn=100);
}



module unit()
{
difference()
{
    union()
    {
        translate([-3, 0, Z]) cube([X+3*2, Y, th]);
        translate([0, 0, 0]) cube([X, Y, Z]);
        translate([X-24-24/2+3/2, 0, -Z-6]) cube([24, Y, Z+6]);
    }
    translate([X-24, 0, -100-6]) cube([3, Y, 100]);
    
    #translate([3, 0, 0]) rotate([0, 0, 90+5]) cube([40, 10, Z]);
    #translate([X-3, 0, Z]) rotate([0, 180, 90+180-5]) cube([40, 10, Z]);
    #translate([3, Y, Z]) rotate([0, 180, 90-5]) cube([40, 10, Z]);
    #translate([X-3, Y, 0]) rotate([0, 0, 90+180+5]) cube([40, 10, Z]);
}
}