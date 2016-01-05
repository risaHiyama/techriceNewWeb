/* OpenProcessing Tweak of *@*http://www.openprocessing.org/sketch/7150*@* */
/* !do not delete the line above, required for linking your tweak if you upload again */
// A simple recursive tree
// (c) Alasdair Turner 2007

void setup()
{
  size(400,400);
  smooth();
  noLoop();
}

void draw()
{
  background(204);   
  strokeWeight(10);
  translate(width/2,height);
  branch(0);
}

void branch(int depth)
{
    if (depth < 10) {
      line(0,0,0,-height/3);
      pushMatrix();
      {
        translate(0,-height/5);
        rotate(random(-PI/4,PI/4));
        scale(0.7); //<>//
        branch(depth + 2);
      }
      popMatrix();
      //pushMatrix();
      //{
      //  translate(0,-height/3);
      //  rotate(random(-PI/4,PI/4));
      //  scale(0.7);
      //  branch(depth + 1);
      //}
      //popMatrix();
    }
}

void mouseClicked()
{
  redraw(); 
}