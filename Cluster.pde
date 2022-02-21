public class Cluster
{
  public final static int NUM_STEMS = 7; //number of tendrils per cluster
  private float theta;
  
  public Cluster(int len, int x, int y)
  {
    // your code here
    theta = (float)(Math.random() * 2 * PI);

          Tendril timmy0 = new Tendril(len, theta, x, y);
          Tendril timmy1 = new Tendril(len, theta + (2*PI/7), x, y);
          Tendril timmy2 = new Tendril(len, theta + (4*PI/7), x, y);
          Tendril timmy3 = new Tendril(len, theta + (6*PI/7), x, y);
          Tendril timmy4 = new Tendril(len, theta + (8*PI/7), x, y);
          Tendril timmy5 = new Tendril(len, theta + (10*PI/7), x, y);
          Tendril timmy6 = new Tendril(len, theta + (12*PI/7), x, y);
          timmy0.show();
          timmy1.show();
          timmy2.show();
          timmy3.show();
          timmy4.show();
          timmy5.show();
          timmy6.show();
  }
}
