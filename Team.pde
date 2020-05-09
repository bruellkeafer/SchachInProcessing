
class Team {
  ArrayList<Figur> lebendig = new ArrayList<Figur>();
  ArrayList<Figur> geschlagen  = new ArrayList<Figur>();;
  boolean rochade;
  boolean farbe;

  Team(boolean selection) {
    farbe = selection;
  }

  void setup() {
    lebendig.clear();
    geschlagen.clear();
    String [] list = (farbe)? loadStrings("weiss.txt") : loadStrings("schwarz.txt");
    for (int i = 0; i < 16; i++) {
      String [] figurInfo = split(list[i+2], ',');
      println(figurInfo[0].charAt(0));
      int t = Integer.parseInt(str(figurInfo[0].charAt(0))); // Die 
      int y = Integer.parseInt(str(figurInfo[1].charAt(0))); // und Die Funktion sind etwas hässlig, weil einen Char in einen Int zu verwandeln etwas wurschtelig ist. wenn du nen besseren Weg findes, go for it
      int x = buchstabeZuZahl(figurInfo[2].charAt(0));
      Figur f = new Figur(t, y, x); 
      lebendig.add(f);
    }
  }
  
  
  void printLebendig(){
   for(Figur f : lebendig){
    f.printFigur(); 
   }
  }
  
  
  void showTeam(){
   for(Figur f: lebendig){
      tilePrint(farbe,f.type,  spielMain.spielbrett.SpielFeld[f.xPos-1][f.yPos-1].xPos + int(spielMain.spielbrett.SpielFeld[0][0].seitenL/2) ,  spielMain.spielbrett.SpielFeld[f.xPos-1][f.yPos-1].yPos + int(spielMain.spielbrett.SpielFeld[0][0].seitenL/2) ); 
   }
  }
}
