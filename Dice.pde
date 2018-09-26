void setup()
{
  size(500, 500);
	noLoop();
}

void draw()
{
	background(#477148);

  for(int y = 25; y < 401; y += 100){
    for(int x = 25; x < 501; x+= 100){
      Die dieOne = new Die(x, y);
      dieOne.show();
    }
  }
}

void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	int myX, myY, numDots, totalDots = 0;
	
	Die(int x, int y) //constructor
	{
		myX = x;
    myY = y;
	}
	
  int roll(){
	  return numDots = (int)(Math.random() * 6 + 1);
    
	}
	
  void show(){
    fill(255);
    rect(myX, myY, 50, 50);
    
    int numDots = roll();
    int totalDots = 0;
    totalDots += numDots;
    
    fill(0);
    
    if(numDots == 1){
        ellipse(myX + 25, myY + 25, 10, 10);
    } else if(numDots == 2){
        ellipse(myX + 40, myY + 10, 10, 10);
        ellipse(myX + 10, myY + 40, 10, 10);
    } else if(numDots == 3){
        ellipse(myX + 10, myY + 10, 10, 10);
        ellipse(myX + 25, myY + 25, 10, 10);
        ellipse(myX + 40, myY + 40, 10, 10);
    } else if(numDots == 4){
        ellipse(myX + 10, myY + 10, 10, 10);
        ellipse(myX + 40, myY + 10, 10, 10);
        ellipse(myX + 10, myY + 40, 10, 10);
        ellipse(myX + 40, myY + 40, 10, 10);
    } else if(numDots == 5){
        ellipse(myX + 10, myY + 10, 10, 10);
        ellipse(myX + 40, myY + 10, 10, 10);
        ellipse(myX + 25, myY + 25, 10, 10);
        ellipse(myX + 10, myY + 40, 10, 10);
        ellipse(myX + 40, myY + 40, 10, 10);
    } else {
        ellipse(myX + 10, myY + 10, 10, 10);
        ellipse(myX + 25, myY + 10, 10, 10);
        ellipse(myX + 40, myY + 10, 10, 10);
        ellipse(myX + 10, myY + 40, 10, 10);
        ellipse(myX + 25, myY + 40, 10, 10);
        ellipse(myX + 40, myY + 40, 10, 10);
    }
	}
}
