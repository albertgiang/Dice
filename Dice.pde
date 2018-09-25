void setup()
{
  size(500, 500);
	noLoop();
}

void draw()
{
	background(#477148);
  Die dieOne = new Die(25, 25);
  dieOne.show();
}

void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	int myX, myY, numDots;
	
	Die(int x, int y) //constructor
	{
		myX = x;
    myY = y;
	}
	
  void roll()
	{
	  int numDots = (int)(Math.random() * 6 + 1);
	}
	
  void show()
	{
		rect(myX, myY, 50, 50);
	}
}
