// 定数
final int[] fishToLeft  = new int[] {    // 魚の形状 (左向き)
  0, 0, 70, 30,                          // 胴体の相対位置(x,y)・横幅・縦幅
  38, 0, 15, 25                          // 尾びれの相対位置(x,y)・横幅・縦幅
};
final int[] fishToRight = new int[] {    // 魚の形状 (右向き)
  0, 0, 70, 30,
  -38, 0, 15, 25
};
final int bodyX = 0;
final int bodyY = 1;
final int bodyLength = 2;
final int bodyWidth =3;
final int finX = 4;
final int finY = 5;
final int finLength = 6;
final int finWidth = 7;

int l = 0;
int start = 0;
int x = 60;
int y = 100;

String text = "click to start";
void setup()
{
  size(400,400);
  noStroke();
  background(63,63,255);
  fill(63,31,31);
  
  
}

void draw()
{
  background(63,63,255); 
  y =100;
  for(int i = 0;i<3;i++)
  {
    if(i == 0)
    {
      y =100;
    }
    else if (i == 1)
    {
      y =200;
    }
    else if(i == 2)
    {
      y =300;
    }
    if(mouseX == x && l ==1)
     {
       //drawFish(fishToRight[bodyX],fishToRight[bodyY],fishToRight[finX],fishToRight[finY]);
       drawFishRight(x,fishToRight);
     }
     if(mouseX == x && l == 0)
     {
        //drawFish(fishToLeft[bodyX],fishToLeft[bodyY],fishToLeft[finX],fishToLeft[finY]);
        drawFishLeft(x,fishToLeft); 
   }
    if(mouseX <x)
     {
       //drawFish(fishToLeft[bodyX],fishToLeft[bodyY],fishToLeft[finX],fishToLeft[finY]);
       drawFishLeft(x,fishToLeft);
       x--;
       l=0;
     }
     else if(mouseX > x)
     {
       //drawFish(fishToRight[bodyX],fishToRight[bodyY],fishToRight[finX],fishToRight[finY]);
       drawFishRight(x,fishToRight);
       x++;
       l=1;
     }
  }
}

void drawFishRight(int cX,int[] fishR)
{ 
  ellipse(cX+fishR[bodyX],y+fishR[bodyY],fishR[bodyLength],fishR[bodyWidth]);
  ellipse(cX+fishR[finX],y+fishR[finY],fishR[finLength],fishR[finWidth]);
}
void drawFishLeft(int cX,int[] fishL)
{
  ellipse(cX+fishL[bodyX],y+fishL[bodyY],fishL[bodyLength],fishL[bodyWidth]);
  ellipse(cX+fishL[finX],y+fishL[finY],fishL[finLength],fishL[finWidth]);
}
