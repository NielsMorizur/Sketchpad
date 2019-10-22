//button colors
color dgrey=#7B8486;
color turquoise=#339999;
color dred=#7E282E;
color lettuce=#61792B;
color plum=#642947;
color mist=#BAC4EA;
color yellow=#FCF94A;
color trunkbrown=#462516;

color refresh=#8EC9CE;
color red=#E80E0E;
color beige=#FFA683;

float sliderY; 
float thickness;
float slidethick;

color drawingColor=dgrey;

void setup() {
  size(1200, 800);
  background(255);
  sliderY=340;
  thickness=1;
  slidethick=15;
}

void draw() {
 println(mouseX, mouseY);
   noStroke();
   fill(70);
rect(0,0, 60,800);

  stroke(255);
  strokeWeight(1);
line(30,340, 30,500);  
  fill(drawingColor);
  stroke(255);
ellipse(30,sliderY, slidethick,slidethick);

if (mousePressed) {
  if (dist(30,sliderY, mouseX,mouseY) < 28) {
    sliderY=mouseY;
  if (sliderY < 340) {
    sliderY=340;
   }
  if (sliderY > 500) {
    sliderY=500;  
   }
 }
 
 slidethick = map(sliderY, 340,500, 15,40);
 thickness = map(sliderY, 340, 500, 1, 30);
  
}

 //drawing color buttons
   strokeWeight(2); 
   fill(dgrey);
   stroke(255);
ellipse(30,25, 30,30);
  fill(turquoise);
 ellipse(30,60, 30,30);
  fill(dred);
ellipse(30,95, 30,30);
  fill(lettuce);
ellipse(30,130, 30,30);
  fill(plum);
ellipse(30,165, 30,30);
  fill(mist);
ellipse(30,200, 30,30);
  fill(yellow);
ellipse(30,235, 30,30);
  fill(trunkbrown);
ellipse(30,270, 30,30);
 
 //eraser button
   fill(beige);
   stroke(255);
   strokeWeight(1);
quad(12,560, 21,574, 50.5,554.5, 42,540);
 
 //clear button
 noFill();
 stroke(refresh);
 strokeWeight(4);
ellipse(30,770, 30,30);
  noStroke();
  fill(70);
triangle(30,770, 50,779, 50,750);
  fill(refresh);
  noStroke();
triangle(32,766, 45,766, 46,753);
 
//drawing line on canvas code
strokeWeight(thickness);
stroke(drawingColor);
 if (mousePressed){
  if (mouseX>=60) {
   line(mouseX, mouseY,600, 400);
  }
 }
}
void mouseReleased() {
  if (dist(30,25, mouseX, mouseY) <= 15) {
    drawingColor=dgrey;
  }
  if (dist(30,60, mouseX,mouseY) <= 15) {
     drawingColor=turquoise; 
  }
  if (dist(30,95, mouseX,mouseY) <=15) {
     drawingColor=dred; 
  }
   if (dist(30,130, mouseX,mouseY) <=15) {
     drawingColor=lettuce; 
  }
   if (dist(30,165, mouseX,mouseY) <=15) {
     drawingColor=plum; 
  }
   if (dist(30,200, mouseX,mouseY) <=15) {
     drawingColor=mist; 
  }
   if (dist(30,235, mouseX,mouseY) <=15) {
     drawingColor=yellow; 
  }
   if (dist(30,270, mouseX,mouseY) <=15) {
     drawingColor=trunkbrown; 
  }
  if (dist(30,770, mouseX,mouseY) <=15) {
     background(255); 
  }
  if (dist(17,555, mouseX,mouseY)<= 37) {
     drawingColor=255; 
  }
}
