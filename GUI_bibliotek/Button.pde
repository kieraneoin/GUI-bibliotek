class Button {

  String titel;
  float x, y, w, h;
  Action a;

  Button(int x, int y, int w, int h, String t) {
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    titel=t;
  }

  void addAction(Action a) {
    this.a=a;
  }

  void display() {
    rect(x, y, w, h);
    fill(0);
    text(titel, x+70, y+30);
    fill(255);
  }

  void click() {
    if (mouseX>=x && mouseX <=x+w && mouseY>=y && mouseY<=y+h) {
      a.execute();
    }
  }
}
