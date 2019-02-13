float x,y,r,angle,theeta;

void setup()
{
  size(400,400);
  theeta = 0;
}

void draw()
{
  r = 6 + (4 * abs(sin(theeta)));
  translate(width/2,height/2);
  background(0);
  noFill();
  stroke(random(0,255),random(0,255),random(0,255));
  
  beginShape();
  for(angle = 0; angle <= TWO_PI; angle += 0.01 )
  {
    x = r * (16 * pow(sin(angle),3));
    y = -r * (13 * cos(angle) - 5 * cos(2 * angle) - 2 * cos(3 * angle) - cos(4 * angle));
    strokeWeight(4);
    vertex(x,y);
  }
  endShape();
  theeta += 0.05;
  if(theeta >= TWO_PI)
  theeta = 0;
}
