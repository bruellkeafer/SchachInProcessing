
class Spiel{
  Brett spielbrett = new Brett();
  Team weiss = new Team(true);
  Team schwarz = new Team(false);  
  
  void spielSetup(){
   weiss.setup();
   schwarz.setup();
  }
}
