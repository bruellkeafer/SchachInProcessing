
PImage tileset;

int tileSize = 45;
int tileDist = 16;

void ladeTiles(){
 tileset = loadImage("Chess_symbols.png"); 
 imageMode(CENTER);
}

void tilePrint(boolean farbe, int typ, float xPos, float yPos){
 int tileX = 0,tileY = 0; 
 tileY += (!farbe) ? tileDist + tileSize : 0 ;
 switch(typ){
  case 1 : tileX += 5*tileDist + 5*tileSize; break;
  case 2 : tileX += 3*tileDist + 3*tileSize; break;
  case 3 : tileX += 4*tileDist + 4*tileSize; break;
  case 4 : tileX += 2*tileDist + 2*tileSize; break;
  case 5 : tileX += 1*tileDist + 1*tileSize; break;
  case 6 : tileX += 0*tileDist + 0*tileSize; break;
 }
  
 image(tileset,xPos,yPos,feldXlaenge,feldYlaenge, 15 + tileX, 13 + tileY, 17 + tileX + tileSize, 15 + tileY + tileSize); 
}
