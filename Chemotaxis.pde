Bacteria[] bacterias = new Bacteria[150];
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
 class Bacteria    
 {     
 	int myX, myY;
 	Bacteria(){
 		myX = 250;
 		myY = 250;
 	}
 	void move(){
 		int xPoint, yPoint;
 		xPoint = mouseX;
 		yPoint = mouseY;
 		int signX = (int)(Math.signum(xPoint - myX));
      	int signY = (int)(Math.signum(yPoint - myY));
      	myX += (int)(Math.random() * signX * 4.5) + (-1 * signX);
      	myY += (int)(Math.random() * signY * 4.5) + (-1 * signY);
 	}
 	void show(){
 		fill(255,0,0);
 		ellipse(myX,myY,3,3);
 	}
 }    
