 Bacteria [] bob = new Bacteria [500];
 int x = 0;
 int y = 0;
 void setup()   
 {     
   size (350,350);
   for (int i = 0; i < bob.length; i++)
    bob[i] = new Bacteria(); 
 }   
 void draw()   
 {    
   background (0);
   for (int i = 0; i < bob.length; i++)
     {
      bob[i].walk();
      bob[i].show();
     }
 }  
 class Bacteria    
 {     
    int myX, myY, mySize, myColor;
    Bacteria() 
    {
      myX = (int) (Math.random()*501);
      myY = (int) (Math.random()*501);
      myColor = color((int) (Math.random()*255),(int) (Math.random()*255),(int) (Math.random()*255));
      mySize = (int) (Math.random()*40)+5;
    }
    void walk ()
    {
     if (myX < mouseX)
        x = 2;
      if (myY < mouseY)
        y = 2;
      if (myX > mouseX)
        x = 4;
      if (myY > mouseY)
        y = 4;  
      if((myX==mouseX)&&(myY==mouseY)){
      myColor=color(0,255,255);
      mySize=mySize+20;
      }
      myX += (int) (Math.random()*7)-x;
      myY += (int) (Math.random()*7)-y;
    }
    void show () 
   {
     noStroke();
     fill (myColor); 
     ellipse (myX,myY,mySize,mySize);
   }
 }
