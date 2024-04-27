//TP#1 - Dibujo básico y GitHub
//Alumno: Leonardo Caballero
//Legajo: 91520/2
//Comision 5
//Profesor: Tobias Albirosa
PImage uva;

void setup(){
  size(800,400);
  background(200);
  
  uva = loadImage("uva.jpg");
}

void draw(){
  
  image(uva,470,0,330,400);
  
  stroke(16,144,45);
  strokeWeight(20);
  line(340,180,400,18);
  stroke(0);
  fill(193,40,200);
  strokeWeight(5);
  ellipse(300,150,65,65);
  ellipse(360,140,65,65);
  ellipse(420,150,65,65);
  ellipse(280,200,65,65);
  ellipse(320,190,65,65);
  ellipse(375,190,65,65);
  ellipse(430,190,65,65);
  ellipse(295,250,65,65);
  ellipse(345,240,65,65);
  ellipse(403,240,65,65);
  ellipse(330,290,65,65);
  ellipse(385,289,65,65);
  ellipse(358,330,65,65);
  noStroke();
  fill(250);
  ellipse(298,130,18,9);
  ellipse(360,120,18,9);
  ellipse(418,130,18,9);
  ellipse(272,181,18,9);
  ellipse(317,170,18,9);
  ellipse(373,170,18,9);
  ellipse(430,170,18,9);
  ellipse(291,231,18,9);
  ellipse(344,220,18,9);
  ellipse(404,220,18,9);
  ellipse(331,270,18,9);
  ellipse(387,270,18,9);
  ellipse(359,310,18,9);
}
