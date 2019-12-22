


void setup() {
strokeWeight(0);

size( 400, 400, P2D);


rect( 40, 1, 300, 130); 

//star box 
fill(0, 0, 255);
rect( 40, 1, 100, 70);


// stripes
fill(255, 0, 0);
rect( 140, 1, 200, 10);
rect( 140, 21, 200, 10);
rect( 140, 41, 200, 10);
rect( 140, 61, 200, 10);
rect( 40, 81, 300, 10);
rect( 40, 101, 300, 10);
rect( 40, 121, 300, 10);



// stars
fill( 255, 255, 255);
// first row
star( 50, 10, 2, 4, 5, 1);
star( 65, 10, 2, 4, 5, 1);
star( 80, 10, 2, 4, 5, 1);
star( 95, 10, 2, 4, 5, 1);
star( 110, 10, 2, 4, 5, 1);
star( 125, 10, 2, 4, 5, 1);

// second row
star( 57, 16, 2, 4, 5, 1);
star( 72, 16, 2, 4, 5, 1);
star( 87, 16, 2, 4, 5, 1);
star( 102, 16, 2, 4, 5, 1);
star( 117, 16, 2, 4, 5, 1);

// 3rd row
star( 50, 22, 2, 4, 5, 1);
star( 65, 22, 2, 4, 5, 1);
star( 80, 22, 2, 4, 5, 1);
star( 95, 22, 2, 4, 5, 1);
star( 110, 22, 2, 4, 5, 1);
star( 125, 22, 2, 4, 5, 1);

// 4th row
star( 57, 28, 2, 4, 5, 1);
star( 72, 28, 2, 4, 5, 1);
star( 87, 28, 2, 4, 5, 1);
star( 102, 28, 2, 4, 5, 1);
star( 117, 28, 2, 4, 5, 1);



// 5th row
star( 50, 34, 2, 4, 5, 1);
star( 65, 34, 2, 4, 5, 1);
star( 80, 34, 2, 4, 5, 1);
star( 95, 34, 2, 4, 5, 1);
star( 110, 34, 2, 4, 5, 1);
star( 125, 34, 2, 4, 5, 1);

// 6th row
star( 57, 40, 2, 4, 5, 1);
star( 72, 40, 2, 4, 5, 1);
star( 87, 40, 2, 4, 5, 1);
star( 102, 40, 2, 4, 5, 1);
star( 117, 40, 2, 4, 5, 1);


// 7th row
star( 50, 46, 2, 4, 5, 1);
star( 65, 46, 2, 4, 5, 1);
star( 80, 46, 2, 4, 5, 1);
star( 95, 46, 2, 4, 5, 1);
star( 110, 46, 2, 4, 5, 1);
star( 125, 46, 2, 4, 5, 1);

// 8th row
star( 57, 52, 2, 4, 5, 1);
star( 72, 52, 2, 4, 5, 1);
star( 87, 52, 2, 4, 5, 1);
star( 102, 52, 2, 4, 5, 1);
star( 117, 52, 2, 4, 5, 1);

// 9th row
star( 50, 58, 2, 4, 5, 1);
star( 65, 58, 2, 4, 5, 1);
star( 80, 58, 2, 4, 5, 1);
star( 95, 58, 2, 4, 5, 1);
star( 110, 58, 2, 4, 5, 1);
star( 125, 58, 2, 4, 5, 1);

















}

void star(float x, float y, float radius1, float radius2, int npoints, float rotation) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  PShape p = createShape();
  p.beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = cos(a) * radius2;
    float sy = sin(a) * radius2;
    p.vertex(sx, sy);
    sx = cos(a+halfAngle) * radius1;
    sy = sin(a+halfAngle) * radius1;
    p.vertex(sx, sy);
  }
  p.endShape(CLOSE);
  p.rotate(rotation);
  translate(x, y);
shape(p);
translate(-x, -y);
}
