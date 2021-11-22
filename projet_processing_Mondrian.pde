//Création de notre tableau color qui stockera les différentes couleurs 
//disponible pour colorier nos carrés
//Ici, on aura 100 couleurs différentes
color[] colors = new color[100];

//Initialisation de notre tableau indexe
int[][] indexes = new int[600][600];

//On initialise la taille de notre fenêtre 600*600
//On rempli notre tableau indexes avec des valeurs défini pour savoir où on se situera avec dans la fenêtre 
//On initialise les couleurs de nos carrés/rectangle de bases
void setup() {
  size(600, 600);
  colorMode(HSB);
  noStroke();
  
  //Generation points pour le fond
  for (int x = 0; x < 600; x++) {
    for (int y = 0; y < 600; y++) {
      indexes[x][y] = 7;
    }
  }
  
  //Generation points pour le grand carré bleu
  for (int x = 0; x < 190; x++) {
    for (int y = 0; y < 190; y++) {
      indexes[x][y] = 0;
    }
  }
  
  //Generation points pour le grand carré rose
  for (int x = 0; x < 190; x++) {
    for (int y = 210; y < 400; y++) {
      indexes[x][y] = 1;
    }
  }
  
  //Generation points pour le grand carré bleu clair
  for (int x = 0; x < 190; x++) {
    for (int y = 410; y < 600; y++) {
      indexes[x][y] = 2;
    }
  }
  
  //Generation points pour le grand carré orange
  for (int x = 200; x < 600; x++) {
    for (int y = 0; y < 400; y++) {
      indexes[x][y] = 3;
    }
  }
  
  //Generation points pour le rectangle vert clair
  for (int x = 200; x < 528; x++) {
    for (int y = 410; y < 600; y++) {
      indexes[x][y] = 5;
    }
  }
  
  //Generation points pour le petit rectangle bleu
  for (int x = 544; x < 600; x++) {
    for (int y = 410; y < 505; y++) {
      indexes[x][y] = 6;
    }
  }
  
  //Generation points pour le rectangle rouge
  for (int x = 544; x < 600; x++) {
    for (int y = 505; y < 600; y++) {
      indexes[x][y] = 4;
    }
  }
  
  //Changer couleur ici
  colors[0] = color(random(255),random(255),random(255));
  colors[1] = color(random(255),random(255),random(255));
  colors[2] = color(random(255),random(255),random(255));
  colors[3] = color(random(255),random(255),random(255));
  colors[4] = color(random(255),random(255),random(255));
  colors[5] = color(random(255),random(255),random(255));
  colors[6] = color(random(255),random(255),random(255));
  colors[7] = color(random(255),random(255),random(255));
  
}

//On va ensuite remplir nos carrés/rectangle avec notre tableau color et indexes et la fonction fill
void draw() {
  fill(colors[7]);
  rect( 0, 0, 600, 600);
  
  fill(colors[0]);
  rect( 0, 0, 190, 190 ); // 1er carré 
  
  fill(colors[6]);
  rect( 544, 410, 56, 95 ); // 1er petit rectangle  
  
  fill(colors[1]);
  rect( 0, 210, 190, 190 ); // 2ème carré
  
  fill(colors[2]);
  rect( 0, 410, 190, 190 ); // 3nd carré 
  
  fill(colors[3]);
  rect( 200, 0, 400, 400 ); // grand carré 
  
  fill(colors[4]);
  rect( 544, 505, 56, 95 ); // 2nd petit rectangle
  
  fill(colors[5]);
  rect( 200, 410, 328, 190 ); // grand rectabgle 
}

//A chaque clique de souris, on récupère la position X et Y de la souris pour
//savoir sur quel carré/rectangle on a cliqué. On peut alors changé la couleur du carré/rectangle
//En fonction du placement de la souris, on changera la couleur du carré/rectangle en la bonne couleur du tableau de Mondrian
void mousePressed(){
  int x = mouseX;
  int y = mouseY;
  
  //Plusieur if
  
  //Changer la couleur du 1er carré 
  if( x >= 0 && x < 190 && y >= 0 && y < 190 ){ 
    colors[indexes[x][y]] = color(#FFFFFF);
  }
  
  //Changer la couleur du grand carré
  else if( x >= 200 && x < 600 && y >= 0 && y < 400 ){
    colors[indexes[x][y]] = color(#f00020);
  }
  
  //Changer la couleur du 2nd carré 
  else if( x >= 0 && x < 190 && y >= 210 && y < 400 ){
    colors[indexes[x][y]] = color(#FFFFFF);
  }
  
  //Changer la couleur du 3ème carré
  else if( x >= 0 && x < 190 && y >= 410 && y < 600 ){
    colors[indexes[x][y]] = color(#003CFF);
  }
  
  //Changer la couleur du rectangle 
  else if( x >= 200 && x < 528 && y >= 410 && y <600 ){
    colors[indexes[x][y]] = color(#FFFFFF);
  }
  
  //Changer la couleur du 1er petit rectangle
  else if( x >= 544 && x < 600 && y >= 410 && y < 505 ){
    colors[indexes[x][y]] = color(#FFFFFF);
  }
  
  //Changer la couleur du 2nd petit rectangle
  else if( x >= 544 && x < 600 && y >= 505 && y < 600 ){
    colors[indexes[x][y]] = color(#FFEB00);
  }
  
  //Changer la couleur du carré du fond
  else{
    colors[indexes[x][y]] = color(#000000);
  }
}
