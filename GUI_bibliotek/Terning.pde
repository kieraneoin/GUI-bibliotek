class Terning {
  PApplet p;
  Terning(PApplet p){
  this.p=p;
  }
  
//terningen er i sin egen klasse, den er et objekt.
  void kastTerning(int startValue, int endValue ) {
    terningeKast = int(random(startValue, endValue+1));
    sum += terningeKast;
  }
}
