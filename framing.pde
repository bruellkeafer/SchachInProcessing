
void gitterLinien(){
 stroke(0);
  for (int i = 1; i < width/zellenL; i++){
   stroke(( i%10 == 0) ? color(255,0,0) : 0 );
   line(i*zellenL,0,i*zellenL,height);
   line(0,i*zellenL,width,i*zellenL);
 }
  
  
}
