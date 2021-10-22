Walker [] ant = new Walker[500];
void setup(){
  size(500,500);
  for(int i = 0; i < ant.length; i++){
    ant[i] = new Walker();    
  }
  noStroke();
}

void draw(){
  background(#CBB386);
  //plate
  fill(#F2F3F5);
  ellipse(250, 250, 400, 300);
  fill(#D1D1D1);
  ellipse(250, 250, 350, 250);
  fill(#F2F3F5);
  ellipse(250, 250, 340, 240);
  
  //cookie
  fill(#FAD242);
  ellipse(mouseX, mouseY, 90, 60);
  fill(#644D01);
  ellipse(mouseX - 15, mouseY + 7.5, 7.5, 7.5); 
  ellipse(mouseX + 15, mouseY + 7.5, 7.5, 7.5);
  ellipse(mouseX, mouseY - 7.5, 7.5, 7.5);
  ellipse(mouseX + 30, mouseY - 7.5, 7.5, 7.5);
  ellipse(mouseX - 30, mouseY - 7.5, 7.5, 7.5);
  //ants
  for(int i = 0; i < ant.length; i++){
   ant[i].walk();
   ant[i].show();
   
  }
}

class Walker{
  int myX, myY, myColor;
  Walker(){
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor =  color(0);
  }
  void walk(){
    if(myX > mouseX)
      myX = myX + (int)(Math.random() * 5)-3;
     else
      myX = myX + (int)(Math.random() * 5)-1; 
   if(myY > mouseY)
      myY = myY + (int)(Math.random() * 5)-3;
     else
      myY = myY + (int)(Math.random() * 5)-1; 
  }
  void show(){
     fill(myColor);
     ellipse(myX, myY, 5, 5);
  }
 
 
  
}
