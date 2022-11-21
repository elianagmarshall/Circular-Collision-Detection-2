float diameter1=600; //diameter of the large circle
float diameter2=400; //diameter of the medium circle
float diameter3=200; //diameter of the small circle
float size=20; //size of the rectangle and circle attached to the cursor
color color1; //colour variable to change the color of the large circle
color color2; //colour variable to change the color of the medium circle
color color3; //colour variable to change the colour of the small circle

void setup() {
  size(700,700); //size of the run window
}

void draw() {
  background(255); //white background color
  circles(); //draws the circles
  collisionDetection(); //enables collision detection
}

void circles() {
  fill(color1); //fill color variable for the small circle
  circle(width/2,height/2,diameter1); //draws the small circle
  fill(color2); //fill color variable for the medium circle
  circle(width/2,height/2,diameter2); //draws the medium circle
  fill(color3); //fill color variable for the large circle
  circle(width/2,height/2,diameter3); //draws the large circle
}

void collisionDetection() {
  if(dist(width/2,height/2,mouseX,mouseY)<diameter3/2) { //if the cursor is inside the small circle
    line(mouseX,mouseY+10,mouseX,mouseY-10); //draws a vertical line that follows the cursor
    line(mouseX+10,mouseY,mouseX-10,mouseY); //draws a horizontal line that follows the cursor
    color1=255; //white fill color for the large circle
    color2=255; //white fill color for the medium circle
    color3=#FFF700; //yellow fill color for the small circle
  }
  else if(dist(width/2,height/2,mouseX,mouseY)<diameter2/2) { //if the cursor is inside the medium circle
    square(mouseX-size/2,mouseY-size/2,size); //draws a square that follows the cursor
    color1=255; //white fill color for the large circle
    color2=#00FF30; //green fill color for the medium circle
    color3=255; //white fill color for the small circle
  }
  else if(dist(width/2,height/2,mouseX,mouseY)<diameter1/2) { //if the cursor is inside the large circle
    circle(mouseX,mouseY,size); //draws a circle that follows the cursor
    color1=#FF0D00; //red fill color for the large circle
    color2=255; //white fill color for the medium circle
    color3=255; //white fill color for the small circle
  }
  else { //if the cursor is not inside a circle
    color1=255; //white fill color for the large circle
    color2=255; //white fill color for the medium circle
    color3=255; //white fill color for the small circle
  }
}
