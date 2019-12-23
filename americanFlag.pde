void setup() {
noStroke();

size( 300, 130, P2D);

// big white box
rect( 0, 0, 300, 130); 

//star box 
fill(0, 0, 255);
rect( 0, 0, 100, 70);


// stripes
fill(255, 0, 0);
rect( 100, 0, 200, 10);
rect( 100, 20, 200, 10);
rect( 100, 40, 200, 10);
rect( 100, 60, 200, 10);
rect( 0, 80, 300, 10);
rect( 0, 100, 300, 10);
rect( 0, 120, 300, 10);



// stars
fill( 255, 255, 255);
// first row
star( 10, 10);
star( 25, 10);
star( 40, 10);
star( 55, 10);
star( 70, 10);
star( 85, 10);

// second row
star( 17, 16);
star( 32, 16);
star( 47, 16);
star( 62, 16);
star( 77, 16);

// 3rd row
star( 10, 22);
star( 25, 22);
star( 40, 22);
star( 55, 22);
star( 70, 22);
star( 85, 22);

// 4th row
star( 17, 28);
star( 32, 28);
star( 47, 28);
star( 62, 28);
star( 77, 28);



// 5th row
star( 10, 34);
star( 25, 34);
star( 40, 34);
star( 55, 34);
star( 70, 34);
star( 85, 34);

// 6th row
star( 17, 40);
star( 32, 40);
star( 47, 40);
star( 62, 40);
star( 77, 40);


// 7th row
star( 10, 46);
star( 25, 46);
star( 40, 46);
star( 55, 46);
star( 70, 46);
star( 85, 46);

// 8th row
star( 17, 52);
star( 32, 52);
star( 47, 52);
star( 62, 52);
star( 77, 52);

// 9th row
star( 10, 58);
star( 25, 58);
star( 40, 58);
star( 55, 58);
star( 70, 58);
star( 85, 58);

















}



void star(float x, float y) {
    translate(x, y);
    rotate(1);
    float angle = TWO_PI / 5;
    float halfAngle = angle/2.0;
    beginShape();
    for (float a = 0; a < TWO_PI; a += angle) {
        float sx = cos(a) * 4;
        float sy = sin(a) * 4;
        vertex(sx, sy);
        sx = cos(a+halfAngle) * 2;
        sy = sin(a+halfAngle) * 2;
        vertex(sx, sy);
    }
    endShape(CLOSE);
    rotate(-1);
    translate(-x, -y);
}
