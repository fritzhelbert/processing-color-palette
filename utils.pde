//basic clear function
void clearCanvas() {
  fill(white);
  rect(0, 0, width, height);
}

//frame counter
int frameCount = 1;
void frameCount() {
  if (frameCount < fr) {
    frameCount++;
  } else {
    frameCount = 1;
  }
}
