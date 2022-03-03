import controlP5.*;

ControlP5 P5;

void setup(){
  size(1000,1000);
  background(255);
   P5 = new ControlP5(this);
 

   P5.addButton("button1",200,200,200,200,200);
   
}

void draw(){
  

}

void controlEvent(ControlEvent theEvent) { 
 if(theEvent.isController()) { 
 
   if(theEvent.getController().getName()=="button1") {
     background(0);
   } 
 } 
}
