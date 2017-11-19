//making shapes and adding their location and color
translate([10,11,20]){
color([1,0,0]) sphere([50,50,11]);
color([1,0,1]) cube(14,12,11);
}
translate([3,0,0]){
color([1,0,1]) cube([12,13,14]);
}


//difference makes hole within the shape by calling other shaoes
difference() {
   color([1,0,1])  cube(60, center=true);
   color([0,0,1])  sphere(40);
}
translate([0, 0, 40]) {
   color([0.7,0.2,0.4])  cylinder(h=50, r=17);
}

difference(){
   
 color([0.7,0.2,0.4]) sphere(30, center=true);
 color([0.1,0.4,0.7]) cube(30);
    
}


translate([-100,0,0]){

rotate(a=90,v=[1,1,0]){
difference () {
  color([0.1,0.4,0.7]) polyhedron(
  points=[ [50,30,70],[30,-100,0],[-130,-30,10],[-30,40,0], [40,0,30]  ],                                
  triangles=[ [0,1,4],[1,2,4],[2,3,4],[3,10,4],        
              [1,10,3],[2,1,3] ]                         
 );   
    
}

}
}

translate([150,0,0]){

rotate(a=180,v=[1,1,0]){
difference () {
  color([0.1,0.4,0.7]) polyhedron(
  points=[ [50,30,70],[30,-100,0],[-130,-30,10],[-30,40,0], [40,0,30]  ],                                
  triangles=[ [0,1,4],[1,2,4],[2,3,4],[3,10,4],        
              [1,10,3],[2,1,3] ]                         
 );   
    
}

}
}
