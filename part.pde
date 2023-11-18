class Part
{
  float x;
  float y;
  int nBombs = 0;
  boolean hidden = true;
  boolean bomb = false;
  boolean flag = false;
  
  Part(float x_, float y_)
  {
    x = x_;
    y = y_;
  }
  
  
  void show()
  {
    float r = step / 2;
    
    stroke(200);
    noFill();
        
    rect(x, y, step, step);
    
    if(hidden)
    
      if(flag)
      {
        float cx = x + r;
        float cy = y + r;
        
        stroke(255);
        strokeWeight(4);
        fill(0, 100, 255);
        
        beginShape();
        for(int ang = 0; ang < 360; ang += 120)
          vertex(cx + r * sin(degrees(ang)), cy + r * cos(degrees(ang)));
        endShape();
        
        strokeWeight(1);
      }
      
      else
      {
        stroke(200);
        fill(75);
  
        rect(x, y, step, step);
      }
    
    else
      if(bomb)
      {        
        stroke(255);
        fill(255, 0, 0);
        
        ellipse(x + r, y + r, r, r);
      }
      else
              
        if(nBombs != 0)
        {
          fill(0, 255, 0);
          textSize(step / 1.3);
          text(nBombs, x, y + step);
        }
        
        else
        {
          stroke(200);
          fill(190);
          rect(x, y, step, step);
        }
      
  }
  
  

  
  
  
  
}
