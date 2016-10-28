int dieNumber = 0;
int dieTotal = 0;
Die bob; 
void setup()
{
  size(500,500);
  noLoop();
}
void draw()
{
  background(187,237,231);
  
  
  for(int y = 10; y <= 475; y+=60)
  {
    for(int x = 10; x <= 475; x+=60)
    {
      rect(x,y,30,30);
      bob = new Die(x,y);
      bob.show();
      bob.roll();
    }
  }
  fill(0);
  textSize(15);
  text("Total: " + dieTotal, 2, 480);
}

void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int x, y, myValue;
  Die(int myX, int myY)
  {
    x = myX;
    y = myY;
    roll();
    //variable initializations here
  }
  void roll()
  {
    myValue = (int)(Math.random() * 6)+1;

  }

  
  void show()
  {  
    int dieNumber;
    dieNumber = myValue;
    dieTotal += dieNumber;
    
    {
      if (dieNumber <= 1 ){
        fill(255,255,255);
        ellipse(x += 15,y +=15,5,5);
      }
      else if (dieNumber == 2)
      {
        fill(201,69,69);
        ellipse(x+=7,y+=7,5,5);
        ellipse(x+=15,y+=15,5,5);
      }
      else if(dieNumber == 3)
      {
        fill(69,191,201);
        ellipse(x += 5,y +=5,5,5);
        ellipse(x+=10,y+=10,5,5);
        ellipse(x+=12,y+=12,5,5);
      }
      else if(dieNumber == 4)
      {
        fill(71,108,76);
        ellipse(x+=8,y+=8,5,5);
        ellipse(x+=16,y+=1,5,5);
        ellipse(x += 2,y +=16,5,5);
        ellipse(x+=-18,y+=-1,5,5);
      }
      else if(dieNumber == 5)
      {
        fill(222,139,56);  
        ellipse(x+=8,y+=8,5,5);
        ellipse(x+=16,y+=1,5,5);
        ellipse(x += 2,y +=16,5,5);
        ellipse(x+=-18,y+=-1,5,5);
        ellipse(x += 9,y +=-6,5,5); 
      }
      else 
      {
        fill(222,139,56);
        ellipse(x+=8,y+=8,5,5);
        ellipse(x+=16,y+=1,5,5);
        ellipse(x += 2,y +=16,5,5);
        ellipse(x+=-18,y+=-1,5,5);
        ellipse(x += 8,y +=-15,5,5); 
        ellipse(x += 1,y +=16,5,5);
      }
    }
  }
 }
