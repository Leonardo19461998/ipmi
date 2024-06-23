//TP#3 - OpArt con Funciones y Ciclo For
//Alumno: Leonardo Caballero
//Legajo: 91520/2
//Comision 5
//Profesor: Tobias Albirosa

int cant;
color c;
PImage img;

void setup() {
  size(800, 400);
  rectMode(RADIUS);
  ellipseMode(RADIUS);
  c = color(random(255), random(255), random(255));
  fill(c);
  noStroke();
  cant = floor(random(15, 40));
  img = loadImage("Arte.jpeg");
}

void draw() {
  background(255);
  blendMode(DIFFERENCE);

  image(img, 0, 0, width / 2, height);

  for (int i = 0; i <= cant; i++) {
    float radioa = calculateRadius(i);
    float radiob = map(i, 0, cant, width / 4, 20); 
    float radio = map(mouseY, 0, height, radioa, radiob);
    
    drawShape(width * 3 / 4, height / 2, radio);
  }
}

void mousePressed() {
  c = color(random(255), random(255), random(255));
  fill(c);
}

void keyPressed() {
  if (key == 'r') {
    setup();
  }
}

void drawShape(float x, float y, float size) {
  if (x > width / 2) {
    rect(x, y, width / 4, size);
    ellipse(x, y, size, size);
  }
}

float calculateRadius(int i) {
  return map(log(i + 1), 0, log(cant + 1), width / 4, 1); // se agrega 1 a 'i' y 'cant' para evitar log(0)
}
