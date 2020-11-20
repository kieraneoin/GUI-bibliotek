Button buttonTerning6 = new Button(10, 10, 150, 50, "Slå med 6s terning!",this);
Button buttonTerning10 = new Button(340, 10, 150, 50, "Slå med 10s terning!",this);
Button buttonTerning20 = new Button(10, 110, 150, 50, "Slå med 20s terning!",this);

int sum;
int terningeKast;


Terning t = new Terning(this); 

void setup() {
  size(500, 300); 

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

void draw() {
  clear();
  buttonTerning6.display();
  buttonTerning10.display();
  buttonTerning20.display();

  fill(255);
  textAlign(CENTER);
  text("Du har kastet " + terningeKast, width/2, 200);
  text("Samlet sum    " + sum, width/2, 250);
}

void mousePressed() {
  buttonTerning6.click();
  buttonTerning10.click();
  buttonTerning20.click();
}
