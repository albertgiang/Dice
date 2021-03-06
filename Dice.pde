int dotsSum;
int totalDots;

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
  dotsSum = 0;
}

class Die //models one single dice cube
{
	int myX, myY, numDots;
	
	Die(int x, int y) //constructor
	{
		myX = x;
    myY = y;
	}
	
  int roll(){
    numDots = (int)(Math.random() * 6 + 1);
    dotsSum += numDots;
    totalDots += numDots;
    return numDots;
    }
	
  void show(){
    fill(255);
    rect(myX, myY, 50, 50);
    
    int numDots = roll();
    
    fill(255);
    rect(125, 425, 250, 50);
    fill(0);
    textAlign(CENTER);
    text("Sum of Dice Above: " + dotsSum, 250, 445);
    text("Sum of All Dice: " + totalDots, 250, 465);
    
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
