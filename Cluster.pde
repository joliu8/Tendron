public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
        // your code here
        float theta = (float)(Math.random() * 2 * PI);
        Tendril timmy = new Tendril(len, theta, x, y);
        timmy.show();
    }
}
