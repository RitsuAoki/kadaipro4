int r = 150;          // 円の半径
int theta = 0;            // 回転角
int dTheta = 5;       // 回転角の増分/点
float rad;            // 回転角
int d = 10;            // 点の直径
float x, y;           // 点の中心座標
float colorNum = 360;
int dc = 5;
int flag = 1;

int rFrag = 0;
int dr = 1;
int i = 1;
void setup()
{
  size(400, 400);
  noStroke();
  background(255, 255, 255);
  fill(0, 0, 0);
  colorMode(HSB, 360, 100, 100);  // 色の指定をHSBに
  ellipseMode(CENTER);
}

void draw()
{
  colorNum = pointHue(i);
  fill(colorNum,100,100);
  rad = radians(theta);
  x =pointX(rad,r);
  y = pointY(rad,r); 
  ellipse(x,y,d,d);
  theta -= dTheta;
  if(i == 144)
  {
    i = 0;
  }
  i++;
}

float pointX(float radian,int R)
{
  float rX= R*cos(radian)+200;
  return rX;
}
float pointY(float radian,int R)
{
  float rY = R*sin(radian)+200;
  return rY;
}
float pointHue(int num)
{
  return 360/144*num;
}
