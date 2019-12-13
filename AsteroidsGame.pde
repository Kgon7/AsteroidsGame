Star[] nightSky = new Star [200];
ArrayList <Asteroid> sam = new ArrayList <Asteroid>();
Spaceship jake = new Spaceship();
ArrayList <Bullet> ant = new ArrayList <Bullet>();
int health = 3;
int score = 0;
int a = 10;
int level = 1;
public void setup()
{
  size(500,500);
  background(0);
  for(int i = 0; i < nightSky.length; i++)
  {
  	nightSky[i] = new Star();
  }
  for(int p = 0; p < a; p++)
  {
    sam.add(new Asteroid());
  }
}
public void draw() 
{
 background(0);
 textSize(15);
 text("Score:" + score,10,20);
 text("Health:" + health,10,40);
 text("Level:" + level, 10,60);
  if(health <= 0){
      textSize(50);
      text("Game Over", 125, 150);
      textSize(40);
      text("Final Score", 150,225);
      textSize(30);
      text("Score:" + score, 190,275);
      text("Level:" + level, 200,310);
      return;
  }
  for(int i = 0; i < nightSky.length; i++)
  	{
  		nightSky[i].show();
  	}
  for(int p = 0; p < sam.size(); p++)
    {
      sam.get(p).show();
      sam.get(p).move();
      if(dist(sam.get(p).getMyX(), sam.get(p).getMyY(), jake.getMyX(), jake.getMyY()) < 10){
          sam.remove(p);
          health--;
          break;
        }
        for(int k = 0; k < ant.size(); k++)
          if(dist(sam.get(p).getMyX(), sam.get(p).getMyY(), ant.get(k).getMyX(), ant.get(k).getMyY()) < 10){
            sam.remove(p);
            ant.remove(k);
            score+=10;
            break;
        }
    }
  for(int k = 0; k < ant.size(); k++){
      ant.get(k).show();
      ant.get(k).move();
    }
  jake.move();
  jake.show();
  if(sam.size() == 0){
    for(int p = 0; p < (a+level*5-5); p++)
    {
      sam.add(new Asteroid());
    }
    level++;
    health++;
  }
}
public void keyPressed(){
	if(key == 'q'){
			jake.stop();
			jake.hyperSpace();
	}else if(key == 'w'){
			jake.accelerate(.5);
	}else if(key == 'a'){
			jake.turn(-30);
	}else if(key == 'd'){
			jake.turn(30);
		}
   else if(key == ' '){
      if(ant.size() < 8)
        ant.add(new Bullet());
   }
	}

