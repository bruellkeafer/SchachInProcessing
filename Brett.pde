
class Brett {
  Feld [] [] SpielFeld = new Feld [8] [8];

  void brettSetup() {
    for (int i = 0; i < 8; i++) {
      for (int j = 0; j < 8; j++) {
        SpielFeld [i] [j] = new Feld();
        SpielFeld [i] [j].seitenL = (height - 100)/ 8;
        SpielFeld [i] [j].xPos = (i * SpielFeld [i] [j].seitenL) - (4*SpielFeld [i] [j].seitenL);
        SpielFeld [i] [j].yPos =  (j * SpielFeld [i] [j].seitenL) - (4*SpielFeld [i] [j].seitenL);
        SpielFeld [i] [j].farbe = setFeldFarbe(i,j);
      }
    }
  }

  void brettShow() {
    for (int i = 0; i < 8; i++) {
      for (int j = 0; j < 8; j++) {
        SpielFeld [i] [j].show();
      }
    }
  }
}


boolean setFeldFarbe(int i, int j){
  boolean ret;
  if((j+1)%2 == 0){
   ret = ((i+1)%2 == 0)?true:false;
  }else{
   ret = (!((i+1)%2 == 0))?true:false;
    
  }
  
  
  return ret;
}
