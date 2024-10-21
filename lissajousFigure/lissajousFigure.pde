final float circleRadius = 150;   // 円の半径
final float dTheta = 5;           // 回転角 [degree] の増分/1フレーム
final float dDelta = 360.0 / 32;  // 位相差 [degree] の増分/1フレーム
final float pointDiameter = 8;    // 点の直径
// 変数
float centerX;                    // ウィンドウの中心のx座標
float centerY;                    // ウィンドウの中心のy座標
float theta;                      // 回転角 [degree]
float delta;                      // 位相差 [degree]
// 変数追加
float r = 150;
float x;
float y;
int i = 0;


void setup() {
  size(400, 400);
  noStroke();
  background(255, 255, 255);
  colorMode(HSB, 360, 100, 100);  // 色の指定をHSBに
                                  // (色相 0-360, 彩度 0-100, 明度 0-100)
  centerX = width / 2;
  centerY = height / 2;
  theta = 0;
  delta = 0;
}

void draw() {
  float radTheta = radians(theta);                       // 回転角 [radian]
  float radDelta = radians(delta);                       // 位相差 [radian]

  // 関数を使って x 座標を求める
  x = pointX(radTheta,radDelta,r);
  // 関数を使って y 座標を求める
  y = pointY(radTheta,r);
  // 関数を使って色相を求め、fill() で色を指定する
  float hue = pointHue(i);
  fill(hue,100,100);
  ellipse(x + centerX, y + centerY, pointDiameter, pointDiameter);
  theta = theta + dTheta;
  delta = delta + dDelta;
  // 色
  if(i ==144)
  {
    i = 0;
  }
  i++;
}

float pointX(float radian,float radian2,float R)
{
  float rX= R*cos(radian-radian2);
  return rX;
}
float pointY(float radian,float R)
{
  float rY = R*sin(radian);
  return rY;
}
float pointHue(float num)
{
  return 360/144*num;
}
