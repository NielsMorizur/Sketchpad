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
color refresh1=#41A4AA;
color red=#E80E0E;
color beige=#FFA683;

float sliderY; 
float thickness;
float slidethick;
int tool=0;
//0=pen
//1=stamp

float quad1=12;
float quad2=560;
float quad3=21;
float quad4=574;
float quad5=50.5;
float quad6=554.5;
float quad7=42;
float quad8=540;

color drawingColor=dgrey;

PImage tanjiro;

int stamptanj1=80;
int stamptanj2=110;

//------------------------------------------------------------------------------------------------------
void setup() {
  size(1200, 800);
  background(255);
  sliderY=340;
  thickness=1;
  slidethick=15;
  tanjiro=loadImage("tanjiro.png");
}

//------------------------------------------------------------------------------------------------------
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
if (dist(30,sliderY, mouseX,mouseY)<=slidethick/2) {
   strokeWeight(2.5); 
}else{
   strokeWeight(1); 
}
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
if (dist(30,25, mouseX,mouseY)<=15) {
   stroke(255);
} else {
   stroke(0);
}
ellipse(30,25, 30,30);
  
  fill(turquoise);
if (dist(30,60, mouseX,mouseY)<=15) {
   stroke(255);
} else {
   stroke(0);
}
 ellipse(30,60, 30,30);
 
  fill(dred);
if (dist(30,95, mouseX,mouseY)<=15) {
   stroke(255);
} else {
   stroke(0);
}
ellipse(30,95, 30,30);
  
  fill(lettuce);
if (dist(30,130, mouseX,mouseY)<=15) {
   stroke(255);
} else {
   stroke(0);
}
ellipse(30,130, 30,30);
 
  fill(plum);
if (dist(30,165, mouseX,mouseY)<=15) {
   stroke(255);
} else {
   stroke(0);
}
ellipse(30,165, 30,30);
  
  fill(mist);
if (dist(30,200, mouseX,mouseY)<=15) {
   stroke(255);
} else {
   stroke(0);
}
ellipse(30,200, 30,30);
  
  fill(yellow);
if (dist(30,235, mouseX,mouseY)<=15) {
   stroke(255);
} else {
   stroke(0);
}
ellipse(30,235, 30,30);

  fill(trunkbrown);
if (dist(30,270, mouseX,mouseY)<=15) {
   stroke(255);
} else {
   stroke(0);
}
ellipse(30,270, 30,30);
 
 //eraser button
   fill(beige);
   stroke(255);
   strokeWeight(1);
if (mouseX>9 && mouseX<51 && mouseY>540 && mouseY<574) {
  strokeWeight(2);
}else{
  strokeWeight(1); 
}
quad(quad1,quad2, quad3,quad4, quad5,quad6, quad7,quad8);
 
 fill(#00CFE0);
 strokeWeight(2);
  if (mouseX>0 && mouseX<56 && mouseY>600 && mouseY<713) {
      stroke(255);
 }else {
      stroke(0);
 }
 rect(4,597, 53,115);
image(tanjiro,-10, 600, stamptanj1,stamptanj2); 
  
 //clear button
 noFill();
 
  if (dist(30,770, mouseX,mouseY)<=20) {
 stroke(refresh1); 
}else {
 stroke(refresh); 
}

 strokeWeight(4);
ellipse(30,770, 30,30);
  noStroke();
  fill(70);
triangle(30,770, 50,779, 50,750);
  
  if (dist(30,770, mouseX,mouseY)<=20) {
 fill(refresh1); 
}else {
 fill(refresh);
}
  noStroke();
triangle(32,766, 45,766, 46,753);
 
//drawing line on canvas code
strokeWeight(thickness);
stroke(drawingColor);

if (mousePressed){
  if (tool==0) {
   if (mouseX>=60) {
   line(mouseX, mouseY,pmouseX,pmouseY);
  }
 }
  if (tool == 1) {
     if (mouseX>=70) {
  image(tanjiro,mouseX-thickness*10,mouseY-thickness*10, thickness*20,thickness*21);
     }  
  }
}


}
//---------------------------------------------------------------------------------------------------------
void mouseReleased() {
  if (dist(30,25, mouseX, mouseY) <= 15) {
    drawingColor=dgrey;
    tool=0;
  }
  if (dist(30,60, mouseX,mouseY) <= 15) {
     drawingColor=turquoise; 
     tool=0;
  }
  if (dist(30,95, mouseX,mouseY) <=15) {
     drawingColor=dred; 
     tool=0;
  }
   if (dist(30,130, mouseX,mouseY) <=15) {
     drawingColor=lettuce; 
     tool=0;
  }
   if (dist(30,165, mouseX,mouseY) <=15) {
     drawingColor=plum; 
     tool=0;
  }
   if (dist(30,200, mouseX,mouseY) <=15) {
     drawingColor=mist; 
     tool=0;
  }
   if (dist(30,235, mouseX,mouseY) <=15) {
     drawingColor=yellow; 
     tool=0;
  }
   if (dist(30,270, mouseX,mouseY) <=15) {
     drawingColor=trunkbrown; 
     tool=0;
  }
  if (dist(30,770, mouseX,mouseY) <=20) { //refresh
     background(255); 
     tool=0;
     drawingColor=dgrey;
  }
  if (mouseX>9 && mouseX<51 && mouseY>540 && mouseY<574) { //eraser
     drawingColor=255; 
     tool=0;
  }
  
  if(mouseX>0 && mouseX<56 && mouseY>600 && mouseY<713) {  //stamp tanjiro
     tool=1; 
     drawingColor=0;
  }
}

//
