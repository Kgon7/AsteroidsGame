Star[] nightSky = new Star [200];
Spaceship jake = new Spaceship();
public void setup() 
{
  size(500,500);
  background(0);
  for(int i = 0; i < nightSky.length; i++)
  {
  	nightSky[i] = new Star();
  }
}
public void draw() 
{
 background(0);
  for(int i = 0; i < nightSky.length; i++)
  	{
  		nightSky[i].show();
  	}
  jake.move();
  jake.show();
}
public void keyPressed(){
	if(key == ' '){
			jake.stop();
			jake.hyperSpace();
	}else if(key == 'w'){
			jake.accelerate(.5);
	}else if(key == 'a'){
			jake.turn(-30);
	}else if(key == 'd'){
			jake.turn(30);
		}
	}

