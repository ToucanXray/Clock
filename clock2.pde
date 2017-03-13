int minutes;
int hours;
//int x = 1;
int minutes2;
int x2=740;
String name;
PImage night;
PImage day;
PImage morning;
PImage evening;


void setup() {
 size(1700,956);
 night = loadImage("Night_Theme.jpg");
 day = loadImage("Day_Theme.jpg");
 evening = loadImage("Evening_Theme.jpg");
 morning = loadImage("Morning_Theme.jpg");
}

void draw(){
  //Имя пользователя
  name="Sir";
 
  //Текст и бекграунд
    textSize(80);
    textAlign(CENTER);
if ((hours>3) & (hours<11)) {
    background(morning); 
    text("Good morning, "+name,width/2,600);
     }
if ((hours>10) & (hours<17)) {
    background(day); 
    text("Good day, "+name,width/2,600);
}
if ((hours>16) & (hours<23)) {
    background(evening);
    text("Good evening, "+name,width/2,600);  
}
if ((hours>21) & (hours<25)) {
    background(night);
    text("Good night, "+name,width/2,600);
}
if ((hours>-1) & (hours<4)) {
    background(night);
    text("Good night, "+name,width/2,600);
}

 //Часы
       minutes = minute();
       hours = hour();
    textSize(100);
if(minutes>9) {
    textAlign(CENTER);
    text(hours+":"+minutes,width/2,520);
  }
else {
    textAlign(CENTER);
    text(hours+":0"+minutes,width/2,520);
  }
  } 