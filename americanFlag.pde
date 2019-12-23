void setup() {
noStroke();

size( 380, 130, P2D);


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
star( 50, 10);
star( 65, 10);
star( 80, 10);
star( 95, 10);
star( 110, 10);
star( 125, 10);

// second row
star( 57, 16);
star( 72, 16);
star( 87, 16);
star( 102, 16);
star( 117, 16);

// 3rd row
star( 50, 22);
star( 65, 22);
star( 80, 22);
star( 95, 22);
star( 110, 22);
star( 125, 22);

// 4th row
star( 57, 28);
star( 72, 28);
star( 87, 28);
star( 102, 28);
star( 117, 28);



// 5th row
star( 50, 34);
star( 65, 34);
star( 80, 34);
star( 95, 34);
star( 110, 34);
star( 125, 34);

// 6th row
star( 57, 40);
star( 72, 40);
star( 87, 40);
star( 102, 40);
star( 117, 40);


// 7th row
star( 50, 46);
star( 65, 46);
star( 80, 46);
star( 95, 46);
star( 110, 46);
star( 125, 46);

// 8th row
star( 57, 52);
star( 72, 52);
star( 87, 52);
star( 102, 52);
star( 117, 52);

// 9th row
star( 50, 58);
star( 65, 58);
star( 80, 58);
star( 95, 58);
star( 110, 58);
star( 125, 58);
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
