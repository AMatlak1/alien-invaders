float weaponX = 250,bulletX = 280,bulletY = 450;
float enemyX = random(30,470),enemyY = -40;
float count;
PImage galaxy, ship, alien;


void setup()
{
 size(500,500);
 
 galaxy = loadImage("C:\\Users\\aleks\\Desktop\\Space.jpg");
 ship = loadImage("C:\\Users\\aleks\\Desktop\\SpaceShip3.png");
 alien = loadImage("C:\\Users\\aleks\\Desktop\\Invaders.png");
}

void draw()
{ 
  background(galaxy);
  fill(#FF6F00);
  ellipse(bulletX, bulletY,10, 10);
  fill(#1800FF);
  image(ship, weaponX, 425, 60,60);
  fill(#FF0303);
  image(alien, enemyX, enemyY,50,50);
  fill(#FFFFFF);
  text("Score", 50 ,50);
  text(count, 85 , 50);
  
  Bullet(); //shortcut for bullets firing using spacebar
  
 
 //Enemy falling from top 
    if(enemyY < 550)
   {
    enemyY = enemyY + 1; 
   }
   else if(enemyY > 520)
   {
    enemyX = random(30,470);
    enemyY = -20; 
   }
    
   
if(bulletY <= enemyY - 25 && bulletY <= enemyY + 25 && bulletX <= enemyX + 45 && bulletX >= enemyX - 10)
   {
    enemyX = random(30,470);
    enemyY = -40;
    count++;
   }
   //enemy reset when the bullet hits the enemy 
  
  
  
}

void keyPressed()
{
 if(key == 'a')
 {
  weaponX = weaponX - 10;
  bulletX = bulletX - 10;
 }
 else if(key == 'd')
 {
   weaponX = weaponX + 10;
   bulletX = bulletX + 10;
 }
 
 //moves the weapon from left to right using a and d key 
 
}


void Bullet()
{
  if(key == ' ')
 {
  bulletY = bulletY - 5; 
    
  if(bulletY > -5)
  {
    bulletY = bulletY - 5;
  }
  
 }
 else if(bulletY < -5)
 {
  bulletY = 450; 
 }
 //allows the bullet to be fired and for it to follow the weapon
 
}
