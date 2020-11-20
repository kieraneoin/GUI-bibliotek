import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class GUI_bibliotek extends PApplet {

Button buttonTerning6 = new Button(10, 10, 150, 50, "Slå med 6s terning!",this);
Button buttonTerning10 = new Button(340, 10, 150, 50, "Slå med 10s terning!",this);
Button buttonTerning20 = new Button(10, 110, 150, 50, "Slå med 20s terning!",this);

int sum;
int terningeKast;


Terning t = new Terning(this); 

public void setup() {
   

  buttonTerning6.addAction(new Action() {   
    public void execute() {
      t.kastTerning(1, 6);
    }
  }
  );

  buttonTerning10.addAction(new Action() {   
    public void execute() {
      t.kastTerning(1, 10);
    }
  }
  );

  buttonTerning20.addAction(new Action() {   
    public void execute() {
      t.kastTerning(1, 20);
    }
  }
  );
}

public void draw() {
  clear();
  buttonTerning6.display();
  buttonTerning10.display();
  buttonTerning20.display();

  fill(255);
  textAlign(CENTER);
  text("Du har kastet " + terningeKast, width/2, 200);
  text("Samlet sum    " + sum, width/2, 250);
}

public void mousePressed() {
  buttonTerning6.click();
  buttonTerning10.click();
  buttonTerning20.click();
}
interface Action{
public void execute();
}
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
  public void addAction(Action a) {
    this.a=a;
  }
//det der viser min knap
  public void display() {
    p.rect(x, y, w, h);
    p.fill(0);
    p.text(titel, x+70, y+30);
    p.fill(255);
  }
//click metoden
  public void click() {
    if (p.mouseX>=x && p.mouseX <=x+w && p.mouseY>=y && p.mouseY<=y+h) {
      a.execute();
    }
  }
}
class Terning {
  PApplet p;
  Terning(PApplet p){
  this.p=p;
  }
  
//terningen er i sin egen klasse, den er et objekt.
  public void kastTerning(int startValue, int endValue ) {
    terningeKast = PApplet.parseInt(random(startValue, endValue+1));
    sum += terningeKast;
  }
}
  public void settings() {  size(500, 300); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "GUI_bibliotek" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
