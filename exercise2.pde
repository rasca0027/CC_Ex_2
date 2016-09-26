
void setup() {
  size(600, 600);
  background(204, 255, 255);
  frameRate(5);
}

void draw(){
  fill(51, 153, 255);
  noStroke();
  rect(0, 400, 600, 200);
  
  fill(255, 153, 51);
  ellipse(120, 120, 100, 100);
  
  fill(0, 153, 0);
  triangle(500, 250, 350, 400, 650, 400);
  fill(0, 204, 0);
  triangle(380, 320, 300, 400, 460, 400);
  
  fill(158, 87, 25);
  quad(150, 420, 170, 450, 240, 450, 260, 420);
  
  fill(51, 153, 255);
  arc(180, 455, 20, 20, PI, TWO_PI);
  arc(200, 455, 20, 20, PI, TWO_PI);
  arc(220, 455, 20, 20, PI, TWO_PI);
  arc(240, 455, 20, 20, PI, TWO_PI);
  
  // random
  noFill();
  stroke(204, 153, 255);
  ellipse(random(500), random(500), 60, 60);
  
  
  // draw wave
  drawWave(50, 300, 500);
  drawWave(150, 400, 540);
  drawWave(300, 600, 580);
  
  // rainbow
  if (mousePressed) {
    drawRainbow(mouseX, mouseY);
  }
}


void drawRainbow(int x, int y) {
  noStroke();
  fill(255, 0, 0);
  arc(x, y, 180, 180, PI, TWO_PI);
  fill(255, 128, 0);
  arc(x, y, 160, 160, PI, TWO_PI);
  fill(255, 255, 0);
  arc(x, y, 140, 140, PI, TWO_PI);
  fill(0, 255, 0);
  arc(x, y, 120, 120, PI, TWO_PI);
  fill(0, 204, 204);
  arc(x, y, 100, 100, PI, TWO_PI);
  fill(0, 0, 255);
  arc(x, y, 80, 80, PI, TWO_PI);
  fill(102, 0, 204);
  arc(x, y, 60, 60, PI, TWO_PI);
  fill(204, 255, 255);
  arc(x, y, 40, 40, PI, TWO_PI);
}

void drawWave(int start, int end, int y_position) {
  noStroke();
  fill(255);
  float angle = 0.0;
  for(int x = start; x <= end; x += 1){
    float y = y_position + (sin(angle) * 10.0);
    rect(x, y, 2, 2);
    angle += PI/40.0;
  }
}