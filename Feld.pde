
class Feld{
 float xPos,yPos,seitenL;
 boolean farbe = true;
 boolean selected = false;
  
  
  
 void show(){
  stroke(0);
  fill((farbe)? color(#FFEBE0) : color(#934D25));
   rect(xPos,yPos,seitenL,seitenL);
 }
}
