PImage img;
PImage sorted;
int index = 0;

void setup() {
  size(2500, 2500);

  img = loadImage("dice.jpg");
  sorted = createImage(img.width, img.height, RGB);
  sorted = img.get();
}

void draw() {
  println(frameRate);

  int k = 0;
  while(k<=2){
  sorted.loadPixels();

  // Selection sort!
  for (int y = 0; y < sorted.height; y++) {

    float record = -1;
    int selectedPixel = index;

    for (int x = index; x < sorted.width; x++) {
      int loc = y * sorted.width + x;
      color pix = sorted.pixels[loc];
      float b = brightness(pix);
      if (b > record) {
        selectedPixel = loc;
        record = b;
      }
    }
    // Swap selectedPixel with i
    color temp = sorted.pixels[y * sorted.width + index];
    sorted.pixels[y * sorted.width + index] = sorted.pixels[selectedPixel];
    sorted.pixels[selectedPixel] = temp;
  }
  if (index < sorted.width -1) {
    index++;
  } else {
    save("sorted.jpg");
    frameRate(0);
  }
  k++;
  }
  sorted.updatePixels();

  background(0);
  image(img, 0, 0);
  image(sorted, 300, 0);
}