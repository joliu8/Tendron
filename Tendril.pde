class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private float myAngle;
  private float startX, startY, endX, endY;

  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, float theta, int x, int y)
  {
    //your code here
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  public void show()
  {
    //your code here
    if (myNumSegments <= 1)
      stroke(242, 16, 0);
    else if (myNumSegments <20)
      stroke(0, 0, 255);
    else if (myNumSegments <60)
      stroke(222, 245, 15);
    else
      stroke(0, 255, 0);


    startX = myX;
    startY= myY;
    for (int i =0; i< myNumSegments; i++) {
      myAngle = myAngle + (float)((Math.random()*0.4)-0.2); // how to get -0.2 to 0,2
      endX = startX + cos(myAngle) * SEG_LENGTH;
      endY = startY + sin(myAngle) * SEG_LENGTH;
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }

    if (myNumSegments >= SEG_LENGTH) {
      Cluster coo = new Cluster(myNumSegments/4, (int)endX, (int)endY);
    }
  }
}
