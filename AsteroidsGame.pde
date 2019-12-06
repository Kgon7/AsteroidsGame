Star[] nightSky = new Star [200];
ArrayList <Asteroid> sam = new ArrayList <Asteroid>();
Spaceship jake = new Spaceship();
ArrayList <Bullet> ant = new ArrayList <Bullet>();
public void setup() 
{
  size(500,500);
  background(0);
  for(int i = 0; i < nightSky.length; i++)
  {
  	nightSky[i] = new Star();
  }
  for(int p = 0; p < 10; p++)
  {
    sam.add(new Asteroid());
  }
}
public void draw() 
{
 background(0);
  for(int i = 0; i < nightSky.length; i++)
  	{
  		nightSky[i].show();
  	}
  for(int p = 0; p < sam.size(); p++)
    {
      sam.get(p).show();
      sam.get(p).move();
      if(dist(sam.get(p).getMyX(), sam.get(p).getMyY(), jake.getMyX(), jake.getMyY()) < 10)
          sam.remove(p);
      for(int k = 0; k < ant.size(); k++)
        if(dist(sam.get(p).getMyX(), sam.get(p).getMyY(), ant.get(k).getMyX(), ant.get(k).getMyY()) < 10){
          sam.remove(p);
          ant.remove(k);
          break;
        }
    }
  for(int k = 0; k < ant.size(); k++){
      ant.get(k).show();
      ant.get(k).move();
    }
  jake.move();
  jake.show();
  
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
      ant.add(new Bullet());
   }
	}

