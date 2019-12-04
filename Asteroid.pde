class Asteroid extends Floater{
	private int rotSpeed;
	public Asteroid(){
	  corners = 5; //the number of corners, a triangular floater has 3   
  	  xCorners = new int[corners];
  	  yCorners = new int[corners];
  	  yCorners[0] = 8;
  	  xCorners[0] = 4;
  	  yCorners[1] = 0;
  	  xCorners[1] = 12;
  	  yCorners[2] = -8;
  	  xCorners[2] = 8;
  	  yCorners[3] = -12;
  	  xCorners[3] = -12;
  	  yCorners[4] = 4;
  	  xCorners[4] = -8;
 	  myColor = 150;
  	  myCenterX = (int)(Math.random()*500)+50;
  	  myCenterY = (int)(Math.random()*500)+50;
	  myDirectionX = (int)(Math.random()*2)+1;
	  myDirectionY = (int)(Math.random()*2)+1;//holds x and y coordinates of the vector for direction of travel   
  	  myPointDirection = 0;//holds current direction the ship is pointing in degrees 
  	  rotSpeed = (int)(Math.random()*6)-3;
	}
	void move (){
		turn(rotSpeed);
		super.move();
  }
   public float getMyX(){
    return (float)myCenterX;
  }
   public float getMyY(){
    return (float)myCenterY;
  }
}
