class Entity
{

  PVector bulPos;
  PVector enemyPos;
  int enemyW;
  int bulW;
  PVector dir;

  Entity()
  {

    bulPos = new PVector(0, 0);
    enemyPos = new PVector(800, 800);
    enemyW = 0;
    dir = new PVector(1,0);
  }


  boolean ColUpdate(PVector _bulPos)
  {
    if (dist(_bulPos.x, _bulPos.y, enemyPos.x, enemyPos.y)<15)
    {
      enemyW=0;
      enemyPos.x=800;
      //dir.sub(dir);
      
     
     score+=10;
     bulPos.mult(-999);
      
      //println("WEEEEE");
      return true;
    }
    return false;
  }
}