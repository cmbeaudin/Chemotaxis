Bacteria[] bacterias = new Bacteria[500];
 void setup()   
 {  
 	size(500, 500);
 	noStroke();   
 	for(int i = 0; i < bacterias.length; i++){
 		bacterias[i] = new Bacteria();
 	}
 }   
 void draw()   
 {  
 	background(0);
 	for(int i = 0; i < bacterias.length; i++){
 		bacterias[i].show();
 		bacterias[i].move();
 	}
 }
 void mousePressed(){
 	for(int i = 0; i < bacterias.length; i++){
 		bacterias[i].switchColors = true;
 	}
 }  
 class Bacteria    
 {     
 	int x, y;
 	boolean switchColors = false;
 	Bacteria(){
 		x = 250;
 		y = 250;
 	}
 	void move(){
 		if(switchColors){
 			float h = (260f);
 			color changingColor = Color.getHSBColor(h, 1, 1);
 			fill(changingColor);
 		}
 		int xSign = (int)(Math.signum(mouseX - x));
      	int ySign = (int)(Math.signum(mouseY - y));
      	x += (int)(Math.random() * xSign * 4.5) + (xSign * -1);
      	y += (int)(Math.random() * ySign * 4.5) + (ySign * -1);
 	}
 	void show(){
 		ellipse(x, y, 3,3);
 	}
 }    
