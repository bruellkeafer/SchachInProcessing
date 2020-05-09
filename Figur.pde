class Figur {
  int type;
  int xPos, yPos;
  ArrayList<M> AvailableMoves = new ArrayList<M>();
  
  Figur(int t,int y,int x){
    type = t;
    xPos = x;
    yPos = y;
  }
  
  void printFigur(){
    println(typePrint(type)," , ",zahlZuBuchstabe(xPos)," , ",yPos);
  }
  
 void getAvailableMoves(){
  AvailableMoves.clear();
  switch(type){
   case 1 :  fillMoves(bauer);break;
   case 2 :  fillMoves(laufer);break;
   case 3 :  fillMoves(pferd);break;
   case 4 :  fillMoves(turm);break;
   case 5 :  fillMoves(dame);break;
   case 6 :  fillMoves(koenig);break;
  }
 }
 
 void fillMoves(M [] moves){
   for (M mv : moves){
     if (istInFeld(mv,xPos,yPos)){
       if(feldIstFrei(xPos+mv.x,yPos+mv.y)){
         AvailableMoves.add(mv);
       }
       
     }
   }
 }
 
 void printAvailableMoves(){
  for (M mv : AvailableMoves){
    println(mv.x + " : " + mv.y);
  }
 }

}
  




/*
ZUORDNUNG
 1_Bauer
 2_Läufer
 3_Pferd
 4_Turm
 5_Dame
 6_König
 */

int buchstabeZuZahl(char s) { //!!!!!!!!ACHTUNG eigentlich string als input
  int ret = 420;
  switch(s) {
  case 'A' : 
    ret = 1; break;
  case 'B' : 
    ret = 2; break;
  case 'C' : 
    ret = 3; break;
  case 'D' : 
    ret = 4; break;
  case 'E' : 
    ret = 5; break;
  case 'F' : 
    ret = 6; break;
  case 'G' : 
    ret = 7; break;
  case 'H' : 
    ret = 8; break;
  default : 
    ret = 69; break;
  }
  return ret;
}

char zahlZuBuchstabe(int i){
  char c = 'Y';
 switch(i){
  case 1 : c = 'A'; break;
  case 2 : c = 'B'; break;
  case 3 : c = 'C'; break;
  case 4 : c = 'D'; break;
  case 5 : c = 'E'; break;
  case 6 : c = 'F'; break;
  case 7 : c = 'G'; break;
  case 8 : c = 'H'; break;
  default: c = 'X'; break;
 }
 return c;
}


String typePrint(int t){
 String ret = "Penis";
  switch(t){
   case 1 : ret = "Bauer"; break;
   case 2 : ret = "Läufer"; break;
   case 3 : ret = "Pferd"; break;
   case 4 : ret = "Turm"; break;
   case 5 : ret = "Dame"; break;
   case 6 : ret = "König"; break;
   default : ret = ":"+t+":"; break;
  }
  return ret;
}
