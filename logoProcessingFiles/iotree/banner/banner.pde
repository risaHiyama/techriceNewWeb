PFont font;

void setup() {
  font = createFont("SourceSansPro-It-48.vlw", 32);

  size(1800, 200);
  smooth();

  noLoop();
}

void draw() {
  //rectMode(CENTER);
  background(20);
  noStroke(); //<>//
  fill(30);
  rect(width/2,width/2,280,280);

  textSize(20);
  textAlign(CENTER);

  textFont(font, 30);
  fill(255);

  text("iotree", 190, height*5/6 );
  
  strokeWeight(4);
  translate(90, height - 10); //<>//
  branch(0);
}

void branch(int depth) {

  if (depth < 10) {

    stroke(255);

    line(0, 0, 0, -height/3 );

    pushMatrix();
    {
      translate(0, -height/5);
      rotate(random(-PI/4, PI/4));
      scale(0.7);
      branch(depth + 2);
    }
    popMatrix();


    //pushMatrix();
    //{
    //  translate(0, -height/3  + 20);
    //  rotate(random(-PI/4, PI/4));
    //  scale(0.7);
    //  branch(depth + 1);
    //}
    //popMatrix();

    pushMatrix();
    {
      translate(0, -height/3);
      rotate(random(-PI/4, PI/4));
      scale(0.7);
      branch(depth + 3);
    }
    popMatrix();
    
    pushMatrix();
    {
      translate(0, -height/3 + 30);
      rotate(random(-PI/4, PI/4));
      scale(0.7);
      branch(depth + 1);
    }
    popMatrix();

    //line(width/2, height, width/2, height*3/4);
    //line(width/2, 0, width/2, height/4);

    //line(width, 0, width*3/4, height*1/4);
    //line(width, height, width*3/4, height*3/4);

    //line(0, 0, width*1/4, height*1/4);
    //line(0, height, width*1/4, height*3/4);
  }
}


void mouseClicked()
{
  redraw();
}