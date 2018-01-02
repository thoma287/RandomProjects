var bird;
var pipes = [];
var score;
this.num = 0;
this.high = 0;


function setup(){
  createCanvas(1200,600);
  bird = new Bird();
  pipes.push(new Pipe());
  score = new Score();
}

function draw(){
  background(0);
  bird.update();
  bird.show();
  score.show();
  score.showText();
  
  textSize(20);
  text("High: ", 32, 30, 300, 300);

  text(num, 100, 50, 300, 300);
  text(high, 100, 30, 300, 300);

  if(this.high == 0){
    this.high = this.num;
  }
  else if(this.high < this.num){
    this.high = this.num;
  }
  else{
    this.high = this.high;
  }

  if (frameCount % 100 == 0){
      pipes.push(new Pipe());
  }
  
  for(var i = 0; i < pipes.length; i++){
    pipes[i].show();
    pipes[i].update();
    
    if( pipes[i].hits(bird)){
    console.log("HIT");
    num = 0;
    }
  }
}

function keyPressed(){
  if(key == ' '){
    bird.up();
    num++;
  }
}