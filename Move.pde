class M {  //move Class
  int x, y;

  M(int xx, int yy) {
    x = xx;
    y = yy;
  }
}

boolean istInFeld(M mv,int x,int y){
  if( (x+mv.x < 8) && (x+mv.x >= 0) && (y+mv.y < 8) && (y+mv.y >= 0)) return true;
  else return false;
}

boolean feldIstFrei(int x, int y){
  return !spielMain.spielbrett.SpielFeld[x][y].besetzt;
}




M [] bauer = {new M(0, 1)};
M [] laufer = { new M(-1, 1), 
  new M(-2, 2), 
  new M(-3, 3), 
  new M(-4, 4), 
  new M(-5, 5), 
  new M(-6, 6), 
  new M(-7, 7), 
  new M(1, 1), 
  new M(2, 2), 
  new M(3, 3), 
  new M(4, 4), 
  new M(5, 5), 
  new M(6, 6), 
  new M(7, 7), 
  new M(-1, -1), 
  new M(-2, -2), 
  new M(-3, -3), 
  new M(-4, -4), 
  new M(-5, -5), 
  new M(-6, -6), 
  new M(-7, -7), 
  new M(1, -1), 
  new M(2, -2), 
  new M(3, -3), 
  new M(4, -4), 
  new M(5, -5), 
  new M(6, -6), 
  new M(7, -7)
};
M [] pferd = {new M(-2, 1), 
  new M(-1, 2), 
  new M(1, 2), 
  new M(2, 1), 
  new M(2, -1), 
  new M(1, -2), 
  new M(-1, -2), 
  new M(-2, -1)
};
M [] turm = {new M(-1, 0), 
  new M(-2, 0), 
  new M(-3, 0), 
  new M(-4, 0), 
  new M(-5, 0), 
  new M(-6, 0), 
  new M(-7, 0), 
  new M(0, 1), 
  new M(0, 2), 
  new M(0, 3), 
  new M(0, 4), 
  new M(0, 5), 
  new M(0, 6), 
  new M(0, 7), 
  new M(1, 0), 
  new M(2, 0), 
  new M(3, 0), 
  new M(4, 0), 
  new M(5, 0), 
  new M(6, 0), 
  new M(7, 0), 
  new M(0, -1), 
  new M(0, -2), 
  new M(0, -3), 
  new M(0, -4), 
  new M(0, -5), 
  new M(0, -6), 
  new M(0, -7), 
};
M [] dame = (M []) concat(turm, laufer); // Kombination aus laufer und Turm - weil ArraysOfObjects braucht man einen "Typecast" : "(M [])"
M [] koenig = {new M(-1, 0), 
  new M(-1, 1), 
  new M(0, 1), 
  new M(1, 1), 
  new M(1, 0), 
  new M(1, -1), 
  new M(0, -1), 
  new M(-1, -1)
};
