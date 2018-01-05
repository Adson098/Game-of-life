Cell[][] cell;
int cellnum;
int height = 480;
int width = 800;
void setup(){
  size(900,580);
  cell = new Cell[width/10+10][height/10+10];
  
  for(int x=1;x <= width/10;x++){
    for(int y = 1; y<=height/10;y++){
    cell[x][y] = new Cell(x,y);
    }
  }
}

void draw(){
    translate(50,50);
  for(int x=1;x <= width/10;x++){
    for(int y = 1; y<=height/10;y++){
      int nbnum = 0;
      if(x > 1 && y >1 && y<48 && x <80){
        println(x+" "+y);
      if(cell[x-1][y].getLife()==true)nbnum++;
      else if(cell[x+1][y].getLife()==true)nbnum++;
      else if(cell[x-1][y].getLife()==true)nbnum++;
      else if(cell[x][y-1].getLife()==true)nbnum++;
      else if(cell[x-1][y-1].getLife()==true)nbnum++;
      else if(cell[x+1][y-1].getLife()==true)nbnum++;
      else if(cell[x+1][y+1].getLife()==true)nbnum++;
      else if(cell[x-1][y+1].getLife()==true)nbnum++;
      if(nbnum == 3) cell[x][y].setLife(true);
      } 
      else if(x == 0){
        
        
      }
       cell[x][y].show();
     }  
    }
  }