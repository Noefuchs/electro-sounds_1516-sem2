import oscP5.*;
import java.util.concurrent.*;

OscP5 osc;
CopyOnWriteArrayList<Float> audio;

void setupDuration() {
  // create an OscP5 instance and listen on
  // port 12345, the default remote port 
  // used by duration 
  osc = new OscP5(this, 12345);
  // ArrayList audio will be used to store fft 
  // data received from duration
  audio = new CopyOnWriteArrayList();
}

void oscEvent(OscMessage m) {

  // we receive messages from duration.cc
  // there are 3 layers: audio, bangs, /c/1
  // each of these layer correspond to the 
  // address pattern of an OscMessage

  if (m.addrPattern().equals("/bangs")) {
    // a bang is just a signal without data
    println("got a bang", m);
    // linesActive1 = !linesActive1;
    isScaling = true;
  } else if (m.addrPattern().equals("/switches")) {    
    linesActive1 = m.get(0).intValue()==1 ? true:false;
  } else if (m.addrPattern().equals("/switches_0")) {    
    linesActive2 = m.get(0).intValue()==1 ? true:false;
  } else if (m.addrPattern().equals("/curves")) {
    // println("got curves", m);
    bg = color(m.get(0).floatValue()*255);
  } else if (m.addrPattern().equals("/switches_1")) {    
    linesActive3 = m.get(0).intValue()==1 ? true:false;
  }
}