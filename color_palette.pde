//initialize variables
int fr = 60;
int cellSize = 60;
color[] palette;
int colCnt;
int rowCnt;


//runs once at start
void setup() {
  //set screen size, cannot be variables
  size(600, 600);

  //set framerate, default is 60
  frameRate(fr);

  //set up drawing defaults
  background(white);
  noStroke();

  rowCnt = height / cellSize;
  colCnt = width / cellSize;
  initColors();
}



//runs every frame
void draw() {
  clearCanvas();  

  for (int i = 0; i < palette.length; i++) { 
    fill(palette[i]);
    int rowPosition = i / rowCnt; //needs to count up
    int colPosition = i % colCnt; //needs to rollover
    rect(colPosition * cellSize, rowPosition * cellSize, cellSize, cellSize);
  }

  labelColors();

  //do last
  frameCount();
}

void initColors() {
  palette = new color[] {
    white, gray75, gray50, gray25, black, black, black, black, black, black, 
    poppy, poppy25, poppy50, poppy75, poppy, poppy, poppy, poppy, poppy, poppy, 
    sand, sand25, sand50, sand75, sand, sand, sand, sand, sand, sand, 
    apricot, apricot25, apricot50, apricot75, apricot, apricot, apricot, apricot, apricot, apricot, 
    goldenrod, goldenrod25, goldenrod50, goldenrod75, goldenrod, goldenrod, goldenrod, goldenrod, goldenrod, goldenrod, 
    seafoam, seafoam25, seafoam50, seafoam75, seafoam, seafoam, seafoam, seafoam, seafoam, seafoam, 
    olive, olive25, olive50, olive75, olive, olive, olive, olive, olive, olive, 
    sky, sky25, sky50, sky75, sky, sky, sky, sky, sky, sky, 
    lavender, lavender25, lavender50, lavender75, lavender, lavender, lavender, lavender, lavender, lavender, 
    raspberry, raspberry25, raspberry50, raspberry75, raspberry, raspberry, raspberry, raspberry, raspberry, raspberry, 
  };
}

void labelColors() {
  fill(white);
  textSize(18);
  float x = width / 2 + cellSize + cellSize + cellSize;
  float adjustment = cellSize * .33;
  
  for (int i = 0; i < labels.length; i++) {
    text(labels[i], x, cellSize * i + cellSize + cellSize - adjustment);
  }
}
