
class Feld{
 float xPos,yPos,seitenL;
 boolean farbe = true;
 boolean selected = false;
 boolean besetzt = false;
  
  
  
 void show(){
  stroke(0);
  fill((selected)? color(#FF08C6) : (farbe)? color(#FFEBE0) : color(#934D25));
   rect(xPos,yPos,seitenL,seitenL);
 }
}
