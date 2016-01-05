/* OpenProcessing Tweak of *@*http://www.openprocessing.org/sketch/2235*@* */
/* !do not delete the line above, required for linking your tweak if you upload again */
Tree tree = new Tree();
PFont font;

void setup() {
  size(546, 330);
  //  size(512, 320);
  colorMode(RGB, 255);
  background(0);
  smooth();
}

void draw() {
}

void keyReleased() {
  font = createFont("SourceSansPro-Light-48.vlw", 32);
  textAlign(CENTER);
  textFont(font, 80);

  text("iotree", random(130, 200), random(80, height-80));
}

void mouseReleased() {
  tree = new Tree(mouseX, height, height-mouseY, 5);
  tree.render();
}