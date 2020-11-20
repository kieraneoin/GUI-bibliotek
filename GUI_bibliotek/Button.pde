class Button {
//mine variabler
  String titel;
  float x, y, w, h;
  Action a;
  PApplet p;
  
//min knap
  Button(int x, int y, int w, int h, String t, PApplet p) {
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    titel=t;
    this.p=p;
  }
//min knaps handling
  void addAction(Action a) {
    this.a=a;
  }
//det der viser min knap
  void display() {
    p.rect(x, y, w, h);
    p.fill(0);
    p.text(titel, x+70, y+30);
    p.fill(255);
  }
//click metoden
  void click() {
    if (p.mouseX>=x && p.mouseX <=x+w && p.mouseY>=y && p.mouseY<=y+h) {
      a.execute();
    }
  }
}
