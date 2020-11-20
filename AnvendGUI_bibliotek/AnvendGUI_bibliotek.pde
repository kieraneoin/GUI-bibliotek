GUI_bibliotek GUI = new GUI_bibliotek();

GUI_bibliotek.Button buttonTerning6 = (GUI).new Button(10, 10, 150, 50, "Slå med 6s terning!",this);
GUI_bibliotek.Button buttonTerning10 = (GUI).new Button(340, 10, 150, 50, "Slå med 10s terning!",this);
GUI_bibliotek.Button buttonTerning20 = (GUI).new Button(10, 110, 150, 50, "Slå med 20s terning!",this);
GUI_bibliotek.Terning t = (GUI).new Terning(this);


int sum;
int terningeKast;



void setup() {
  size(500, 300); 

  buttonTerning6.addAction(new GUI_bibliotek.Action() {   
    public void execute() {
      t.kastTerning(1, 6);
      sum = GUI.sum;
      terningeKast = GUI.terningeKast;
    }
  }
  );

  buttonTerning10.addAction(new GUI_bibliotek.Action() {   
    public void execute() {
      t.kastTerning(1, 10);
      sum = GUI.sum;
      terningeKast = GUI.terningeKast;
    }
  }
  );

  buttonTerning20.addAction(new GUI_bibliotek.Action() {   
    public void execute() {
      t.kastTerning(1, 20);
      sum = GUI.sum;
      terningeKast = GUI.terningeKast;
    }
  }
  );
}

void draw() {
  clear();
  this.buttonTerning6.display();
  this.buttonTerning10.display();
  this.buttonTerning20.display();

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
