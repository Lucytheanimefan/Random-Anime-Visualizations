color black=#000000;
color white=#ffffff;
String[] priorities={"food", "waifu", "sleep", "money", 
"anime merchandise", "league of legends", "family", "physical appearance", "watching anime",
"Read Anime Maru", "Update MAL ratings", "exercise", "play visual novels", "browse for new anime desktop background",
"fund dying anime industry"};
int[] weight={50, 30, 15, 20, 20, 20, 10, 10, 50, 10, 60, 10, 25, 20, 17};

void setup(){
  size(500,500);
  background(black);

}

void draw(){
  background(black);
  textSize(32);
  text("A Constant Conflict of Priorities", 10,30);
  fill(white);
  stroke(40);
  int xold;
  int yold;
  int x1=20;
  int y1=50;
  for (int i=0; i<15; i++){
    xold=x1;
    yold=y1;
    x1=(int)random(20,330);
    y1=(int)random(70,450);
    
    int size=weight[i];
    textSize(size);
    text(priorities[i], x1,y1);
    if (i!=0){
      stroke(50);
      line(x1,y1,xold,yold);
    }
  }
  waitasec(1);
}

void waitasec (int sec) {
   int minutes = minute();
   int seconds = second();
   int starttime =  (minutes * 60) + seconds;
   int finaltime = starttime + sec;

   while (starttime < finaltime) {

       minutes = minute();
       seconds = second();
       starttime = (minutes * 60) + seconds;
   }
}