int x0 = 50;                          // 人の中心の x座標の初期値
final int y = 300;                          // 人の足元の y座標
final int dx = 50;                          // 人の中心線間の距離
final int humanBodyWidth = 20;              // 体の幅
final int faceDiameter = 30;                // 顔の直径
final int[] humanBodyHeight = new int[] {   // 胴体の長さ; 人数は7名
  145, 186, 176, 168, 186, 156, 172
};

int num =0;
int count = 0;
void setup() {
  size(400, 400);             // ウィンドウのサイズ
  background(255, 255, 255);  // 背景色(白)
  rectMode(CORNERS);
  noStroke();                 // 輪郭線を無効に
  // 人の列を背の高い順に並び替える
  
  searchMaximum(humanBodyHeight);
  
}

void draw()
{
  fill(0, 0, 0);                                                     // 塗る色 (黒)
  rect(x0-10,y-humanBodyHeight[count], x0+10, y);
  ellipse(x0,y-humanBodyHeight[count], 30, 30);
  x0+=dx;
  println(humanBodyHeight[count]);

  count++;
  if(count == 7)
  {
    noLoop();
  }
}

void searchMaximum(int[] humanH)
{
  int a;
  for(int i =0;i<7;i++)
  {
    for(int j = 0;j<6;j++)
    {
      if(humanH[j] < humanH[j+1])
      {
        a = humanH[j];
        humanH[j] = humanH[j+1];
        humanH[j+1] = a;
      }
    }
  }
}
