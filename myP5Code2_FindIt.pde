

var starXPos = [];
var starYPos = [];
var star = "⭐️";
var starTotal = 100;

var planetXPos = [];
var planetYPos = [];
var planet = "🪐";
var planetTotal = 3;
var planetFound = 0;

var rocketXPos = [];
var rocketYPos = [];
var rocket = "🚀";
var rocketTotal = 2;
var rocketFound = 0;

var lll = ["🌟","🛸"];

let x = random(0,width);
let y = random(0,height);







setup = function() {
   size(600, 450); 

   reset();
}

draw = function(){ 

text(lll[0],x,y);
text(lll[1],x,y);
textSize(30);


   if(keyPressed){
    if(key == 'r'){
      reset();
    }
   }

  display();
}


mouseClicked = function(){
  check(mouseX, mouseY);
  check2(mouseX,mouseY);
}

var check = function(xClick, yClick){
  for(var i = 0; i < planetXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, planetXPos[i], planetYPos[i])<15){
      planetXPos.splice(i, 1);
      planetYPos.splice(i, 1);
      planetFound++;
    }
  }
}



var check2 = function(xClick, yClick){
  for(var i = 0; i < rocketXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, rocketXPos[i], rocketYPos[i])<15){
     rocketXPos.splice(i, 1);
      rocketYPos.splice(i, 1);
      rocketFound++;
    }
  }
}


var display = function(){
  background(21, 0, 51);

  fill(200,200,0);
  textSize(20);

  for(var i = 0; i < planetXPos.length; i ++){
    text(planet, planetXPos[i], planetYPos[i]);
  }

  var i = 0;
  while (i < rocketXPos.length) {
    text(rocket, rocketXPos[i], rocketYPos[i]);
    i ++;
  }

  for(var i = 0; i < starXPos.length; i ++){
    text(star, starXPos[i], starYPos[i]);
  }

  fill(0,0,0);
  rect(0,400,600,50);
  fill(255,255,255);
  text("Find The " + planet + "s and "+rocket+"s |   " + planet + " " + planetFound + "/" + planetTotal + rocket + rocketFound + "/" + 2 , 0, 425);

  if(planetFound == planetTotal & rocketFound == rocketTotal){
    fill(0, 200, 200);
    textSize(50);
    text("Press 'r' to restart \nthe game", 50, 200);

 }
 


 

}

var reset = function(){
  starXPos = [];
  starYPos = [];
  planetXPos = [];
  planetYPos = [];
  planetFound = 0;
  rocketXPos = [];
  rocketYPos = [];
  rocketFound = 0;


  for(var i = 0; i < starTotal; i++){
    starXPos.push(random(0,600));
    starYPos.push(random(0,400));
  }

 


  for(var i = 0; i < planetTotal; i++){
    planetXPos.push(random(0,600));
    planetYPos.push(random(0,400));
  }

    for(var i = 0; i < rocketTotal; i++){
    rocketXPos.push(random(0,600));
    rocketYPos.push(random(0,400));
  }
}