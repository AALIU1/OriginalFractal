int r=1500;
float a=255;
float b=255;
float c=255;
public void setup(){
  size(1000,1000);
}
public void draw(){
  background(0,0,0);
  el(500,500,r);
  r+=50;
  if(r>8000){
    r=1500;
  }
}
public void el(float x,float y,float len){
  noFill();
  stroke(255,255,255);
  if(len<=1500){
    ellipse(x,y,len,len);
  }
  else{
    for(int i=2;i<100;i++){
      el(x,y,len/i);
    }
  }
}
