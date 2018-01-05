public class Cell {

  boolean isLife;
  int width;
  int height;
  int x;
  int y;
  public Cell(int x, int y){
    width = 10;
    height = 10;
    this.x = x*10;
    this.y = y*10;
    
    int r = (int)random(1,15);
    if(r == 1) isLife = true;
    //x = (x % 80)*10;
    //if((a/80)%1 == 0 && floor(a/80) != 0) y = floor((a/80)-1)*10;
    //else y = floor(a/80)*10;
    //println(a+" "+x+" "+y+" "+isLife);
   }
   
   public void show(){
     if(isLife == true) fill(0,255,0);
     else fill(200);
     quad(x,y,x+10,y,x+10,y+10,x,y+10);
   }
   
   public void setLife(boolean stats){isLife = stats;}
   public boolean getLife(){return isLife;}
   public int getX(){return x;}
   public int getY(){return y;}

}