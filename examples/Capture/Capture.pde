import ipcapture.*;

IPCapture cam;

void setup() {
  size(640,480);
  cam = new IPCapture(this, "mjpeg_stream_url", "username", "password");
  cam.start();
}

void draw() {
  if (cam.isAvailable()) {
    cam.read();
    image(cam,0,0);
  }
}
