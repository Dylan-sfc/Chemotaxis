 Bacteria[] dave = new Bacteria[50];    
void setup()    
{              
     size(300,300);
     for(int i = 0; i < 50; i ++)
     {
         dave[i] = new Bacteria();
     }    
}    
void draw()    
{  
    background(255,255,255);
    for(int i = 0; i < 50; i++)
    {    
        dave[i].show();
        dave[i].move();
    } 
}   
class Bacteria   
{
    int myX;
    int myY;
    int myColor;             
    Bacteria()
    {
        myX = (int)(Math.random()*300);
        myY = 200;
        myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256)); 
    }
    void move()       
    {
        myX = myX + (int)(Math.random()*5)-2; 
        myY = myY + (int)(Math.random()*5)-2;
    }
    void show()
    {
        fill(myColor); 
        stroke(myColor);
        ellipse(myX,myY,10,10);
    }
            
} 
