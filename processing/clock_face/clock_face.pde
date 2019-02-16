import processing.svg.*;
float circler = 70;
float circley = 100;
float bigtick = 1;
float smalltick = 3;
float linew = 1;
void setup() {
  size(144, 144);
  noLoop();
  beginRecord(SVG, "filename.svg");
}

void draw() {
  background(0);
  stroke(255);
  strokeWeight(2);
  // Draw something good here
  pushMatrix();
  translate(width/2, height/2);
  for (int i = 0; i < 12; i++) {
    float theta = i*2*PI/12.0;
    float x1 = circler*cos(theta);
    float y1 = circler*sin(theta);
    float x2 = (circler-smalltick)*cos(theta);
    float y2 = (circler-smalltick)*sin(theta);
    stroke(255);
    line(x1, y1, x2, y2);
  }

  popMatrix();
  endRecord();
}
