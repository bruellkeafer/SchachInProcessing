
class Team{
  ArrayList<Figur> lebendig;
  ArrayList<Figur> geschlagen;
  boolean rochade;
  boolean farbe;
  
  Team(boolean selection){
     this.farbe = selection; 
  }
  
  void setup(){
    lebendig.clear();
    geschlagen.clear();
       
    
    
  }
}
