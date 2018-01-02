function Score(){
  this.top = 400;
  this.bottom = 200;
  this.x = width;
  this.w = 40;  

  

  this.show = function(){
  fill(255, 204, 0);
  rect(30, 20, 150, 55);
  }
  this.showText = function(){
    fill(199, 0, 0);
    textSize(20);
    text("Score: " , 32, 50, 300, 300);
    
  }
}