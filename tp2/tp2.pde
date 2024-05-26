//TP#2 - Variales y Condicionales
//Alumno: Leonardo Caballero
//Legajo: 91520/2
//Comision 5
//Profesor: Tobias Albirosa

PImage intro, foto1, foto2, foto3;
PFont font;
int screen = -1;
int changeTime;
boolean started = false;
float textAlpha;  // Variable para controlar la opacidad del texto

void setup() {
  size(640, 480);
  intro = loadImage("intro.jpg");
  foto1 = loadImage("foto1.jpg");
  foto2 = loadImage("foto2.jpg");
  foto3 = loadImage("foto3.jpg");
  font = createFont("Arial", 24); 
  textFont(font);
  textAlpha = 0; 
}

void draw() {
  background(255);

  if (!started) {
    image(intro, 0, 0, width, height);
    fill(255);
    rect(width / 2 - 100, height / 2 + 25, 200, 50);
    fill(0);
    textAlign(CENTER, CENTER);
    text("Comenzar", width / 2, height / 2 + 50);
  } else {
    if (millis() > changeTime) {
      screen++;
      changeTime = millis() + 5000;
      textAlpha = 0; 
    }

    if (screen == 0) {
      showScreen(foto1, "Los 3 cerditos deben\nconstruir una casa para\ndefenderse del lobo,\n¿qué casa los salvará?", false);
    } else if (screen == 1) {
      showScreen(foto2, "Cada cerdito construyó su casa\nde distintos materiales:\nuno de paja, otro de madera\ny otro de ladrillo y cemento.", false);
    } else if (screen == 2) {
      showScreen(foto3, "El lobo sopló muy fuerte\ny tiró la casa de paja\ny madera, ¿podrá con\nla de cemento?\nContinuará...", true);
    } else if (screen == 3) {
      background(0);
      fill(255);
      textAlign(CENTER, CENTER);
      text("Fin del cuento", width / 2, height / 2);
      rect(width / 2 - 100, height / 2 + 25, 200, 50);
      fill(0); // Texto negro
      text("Reiniciar", width / 2, height / 2 + 50);
    }
  }
}

void showScreen(PImage img, String text, boolean top) {
  image(img, 0, 0, width, height);
  textAlign(CENTER, CENTER);

  float textY = top ? 100 : height - 120;

  textAlpha += 5;
  if (textAlpha > 255) {
    textAlpha = 255;
  }

  fill(255, textAlpha);
  text(text, width / 2 - 1, textY - 1);
  text(text, width / 2 + 1, textY - 1);
  text(text, width / 2, textY - 1 - 1);
  text(text, width / 2, textY - 1 + 1);
  text(text, width / 2 - 1, textY - 1 - 1);
  text(text, width / 2 + 1, textY - 1 + 1);
  text(text, width / 2 - 1, textY - 1 + 1);
  text(text, width / 2 + 1, textY - 1 - 1);
  fill(0, textAlpha); 
  text(text, width / 2, textY);
}

void mousePressed() {
  if (!started && mouseX > width / 2 - 100 && mouseX < width / 2 + 100 && mouseY > height / 2 + 25 && mouseY < height / 2 + 75) {
    started = true;
    screen = 0;
    changeTime = millis() + 5000;
    textAlpha = 0; 
  } else if (screen == 3 && mouseX > width / 2 - 100 && mouseX < width / 2 + 100 && mouseY > height / 2 + 25 && mouseY < height / 2 + 75) {
    screen = -1;
    started = false;
    textAlpha = 0; 
  }
}
