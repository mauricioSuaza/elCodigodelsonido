// Library importieren
import ddf.minim.*;
import ddf.minim.analysis.*;
 
// Objekte erstellen
Minim minim;
AudioPlayer input;
BeatDetect beat;
 
float eRadius;
 
void setup() {
size(512, 512);
smooth();
noStroke();
 
// Konstruktor des Minim Objekts aufrufen
minim = new Minim(this);
 
// Livestream vom FM4 laden, Größe des default sample buffer's ist 1024
input = minim.loadFile("WayOut.mp3",512);
 
// Wiedergabe starten
input.play();
input.printControls();
 
// Erstellt die BeatDetect Instanz
beat = new BeatDetect();
 
ellipseMode(RADIUS);
}
 
void draw() {
 
// für etwas Bewegunsunschärfe
fill(50, 50);
rect(0, 0, width, height);
 
// Initiiert die BeatDetection
beat.detect(input.mix);
 
fill (102, 145, 250, 100);
 
// Trigger der BeatDetection
if ( beat.isOnset() ) eRadius = 3;
 
if ( eRadius < 0.1 ) eRadius = 0.1;
 
// Zeichnet die Kreise
for (float i=1;i<10;i+=0.3) {
fill(102, 145, 250, 10/i*i);
ellipse(width/2, height/2, eRadius*i*i, eRadius*i*i);
}
eRadius *= 0.95;
}


