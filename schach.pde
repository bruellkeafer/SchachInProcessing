int ii;
Spiel spielMain = new Spiel();
String ts = "Döner";
float feldXlaenge = 100, feldYlaenge = 100;

float zellenL = 10;




void setup() {
  fullScreen(); 
  //frame.setVisible(false); // damit kann man das Fenster nicht erscheinen lassen, um sich auf die Ausgabe im Terminal zu konzentrieren
  spielMain.weiss.setup();
  spielMain.schwarz.setup();
  //spielMain.weiss.printLebendig(); // gebe aus, welche Figuren des Teams noch lebendig sind
  println(); // Formatierung der Ausgabe
  //spielMain.schwarz.printLebendig(); // gebe aus, welche Figuren des Teams noch lebendig sind
  ladeTiles();  // Vorbereitung der Figuren
  spielMain.spielbrett.brettSetup(); //Weise jedem FELD auf dem BRETT seine Pos und Farbe zu


}



void draw() {
 background(#B20208); 
 translate(width/2, height/2);
 spielMain.spielbrett.brettShow();
 

  spielMain.weiss.lebendig.get(ii).getAvailableMoves();
  spielMain.weiss.lebendig.get(ii).printAvailableMoves();
  spielMain.spielbrett.selectAvailableFelder(spielMain.weiss.lebendig.get(ii));
  println();
  delay(1000);

 
 ii++;
 ii%=16;
 //spielMain.schwarz.showTeam();
}
