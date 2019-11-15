class Spaceship extends Floater  {   
	public Spaceship() {
    corners = 10; //the number of corners, a triangular floater has 3   
  	xCorners = new int[corners];
  	yCorners = new int[corners];
  	yCorners[0] = -2;
  	xCorners[0] = 4;
  	yCorners[1] = 2;
  	xCorners[1] = 4;
  	yCorners[2] = 3;
  	xCorners[2] = 7;
  	yCorners[3] = 6;
  	xCorners[3] = 4;
  	yCorners[4] = 7;
  	xCorners[4] = 0;
  	yCorners[5] = 4;
  	xCorners[5] = -4;
  	yCorners[6] = -4;
  	xCorners[6] = -4;
  	yCorners[7] = -7;
  	xCorners[7] = 0;
  	yCorners[8] = -6;
  	xCorners[8] = 4;
  	yCorners[9] = -3;
  	xCorners[9] = 7;
  	myColor = 255;
    myCenterX = 250;
    myCenterY  = 250;//holds center coordinates   
  	myDirectionX = 0; 
  	myDirectionY = 0;//holds x and y coordinates of the vector for direction of travel   
  	myPointDirection = 0; //holds current direction the ship is pointing in degrees   
  }
  public void stop(){
  	myDirectionX = 0;
  	myDirectionY = 0;
  }
  public void hyperSpace(){
        myCenterX = (int)(Math.random()*width);
        myCenterY = (int)(Math.random()*height);
        myPointDirection = (Math.random()*361);
   }

}
