
float ax, bx, cx, dx, ex, fx, gx, hx, ix, jx, kx, lx, mx, nx, ox, px, qx, rx, sx, tx, ux, vx, wx, xx, yx, zx;
float ay, by, cy, dy, ey, fy, gy, hy, iy, jy, ky, ly, my, ny, oy, py, qy, ry, sy, ty, uy, vy, wy, xy, yy, zy;
float a2x, b2x, c2x, d2x, e2x, f2x, g2x, h2x, i2x, j2x, k2x, l2x, m2x, n2x, o2x, p2x, q2x, r2x, s2x, t2x, u2x, v2x, w2x, x2x, y2x, z2x;
float a2y, b2y, c2y, d2y, e2y, f2y, g2y, h2y, i2y, j2y, k2y, l2y, m2y, n2y, o2y, p2y, q2y, r2y, s2y, t2y, u2y, v2y, w2y, x2y, y2y, z2y;

PFont font;
int sf = 32;
int ss = 32;

boolean aover = false;
boolean bover = false;
boolean cover = false;
boolean dover = false;
boolean eover = false;
boolean fover = false;
boolean gover = false;
boolean hover = false;
boolean iover = false;
boolean jover = false;
boolean kover = false;
boolean lover = false;
boolean mover = false;
boolean nover = false;
boolean oover = false;
boolean pover = false;
boolean qover = false;
boolean rover = false;
boolean sover = false;
boolean tover = false;
boolean uover = false;
boolean vover = false;
boolean wover = false;
boolean xover = false;
boolean yover = false;
boolean zover = false;

boolean aocked = false;
boolean bocked = false;
boolean cocked = false;
boolean docked = false;
boolean eocked = false;
boolean focked = false;
boolean gocked = false;
boolean hocked = false;
boolean iocked = false;
boolean jocked = false;
boolean kocked = false;
boolean locked = false;
boolean mocked = false;
boolean nocked = false;
boolean oocked = false;
boolean pocked = false;
boolean qocked = false;
boolean rocked = false;
boolean socked = false;
boolean tocked = false;
boolean uocked = false;
boolean vocked = false;
boolean wocked = false;
boolean xocked = false;
boolean yocked = false;
boolean zocked = false;

float adifx = 0.0;  
float bdifx = 0.0; 
float cdifx = 0.0;
float ddifx = 0.0;  
float edifx = 0.0; 
float fdifx = 0.0;
float gdifx = 0.0;  
float hdifx = 0.0; 
float idifx = 0.0;
float jdifx = 0.0;  
float kdifx = 0.0; 
float ldifx = 0.0;
float mdifx = 0.0;  
float ndifx = 0.0; 
float odifx = 0.0;
float pdifx = 0.0;  
float qdifx = 0.0; 
float rdifx = 0.0;
float sdifx = 0.0;  
float tdifx = 0.0; 
float udifx = 0.0;
float vdifx = 0.0;  
float wdifx = 0.0; 
float xdifx = 0.0;
float ydifx = 0.0; 
float zdifx = 0.0;

float adify = 0.0;  
float bdify = 0.0; 
float cdify = 0.0;
float ddify = 0.0;  
float edify = 0.0; 
float fdify = 0.0;
float gdify = 0.0;  
float hdify = 0.0; 
float idify = 0.0;
float jdify = 0.0;  
float kdify = 0.0; 
float ldify = 0.0;
float mdify = 0.0;  
float ndify = 0.0; 
float odify = 0.0;
float pdify = 0.0;  
float qdify = 0.0; 
float rdify = 0.0;
float sdify = 0.0;  
float tdify = 0.0; 
float udify = 0.0;
float vdify = 0.0;  
float wdify = 0.0; 
float xdify = 0.0;
float ydify = 0.0; 
float zdify = 0.0;

// 2 ∆∆∆∆∆∆∆∆∆∆∆

boolean a2over = false;
boolean b2over = false;
boolean c2over = false;
boolean d2over = false;
boolean e2over = false;
boolean f2over = false;
boolean g2over = false;
boolean h2over = false;
boolean i2over = false;
boolean j2over = false;
boolean k2over = false;
boolean l2over = false;
boolean m2over = false;
boolean n2over = false;
boolean o2over = false;
boolean p2over = false;
boolean q2over = false;
boolean r2over = false;
boolean s2over = false;
boolean t2over = false;
boolean u2over = false;
boolean v2over = false;
boolean w2over = false;
boolean x2over = false;
boolean y2over = false;
boolean z2over = false;

boolean a2ocked = false;
boolean b2ocked = false;
boolean c2ocked = false;
boolean d2ocked = false;
boolean e2ocked = false;
boolean f2ocked = false;
boolean g2ocked = false;
boolean h2ocked = false;
boolean i2ocked = false;
boolean j2ocked = false;
boolean k2ocked = false;
boolean l2ocked = false;
boolean m2ocked = false;
boolean n2ocked = false;
boolean o2ocked = false;
boolean p2ocked = false;
boolean q2ocked = false;
boolean r2ocked = false;
boolean s2ocked = false;
boolean t2ocked = false;
boolean u2ocked = false;
boolean v2ocked = false;
boolean w2ocked = false;
boolean x2ocked = false;
boolean y2ocked = false;
boolean z2ocked = false;

float a2difx = 0.0;  
float b2difx = 0.0; 
float c2difx = 0.0;
float d2difx = 0.0;  
float e2difx = 0.0; 
float f2difx = 0.0;
float g2difx = 0.0;  
float h2difx = 0.0; 
float i2difx = 0.0;
float j2difx = 0.0;  
float k2difx = 0.0; 
float l2difx = 0.0;
float m2difx = 0.0;  
float n2difx = 0.0; 
float o2difx = 0.0;
float p2difx = 0.0;  
float q2difx = 0.0; 
float r2difx = 0.0;
float s2difx = 0.0;  
float t2difx = 0.0; 
float u2difx = 0.0;
float v2difx = 0.0;  
float w2difx = 0.0; 
float x2difx = 0.0;
float y2difx = 0.0; 
float z2difx = 0.0;

float a2dify = 0.0;  
float b2dify = 0.0; 
float c2dify = 0.0;
float d2dify = 0.0;  
float e2dify = 0.0; 
float f2dify = 0.0;
float g2dify = 0.0;  
float h2dify = 0.0; 
float i2dify = 0.0;
float j2dify = 0.0;  
float k2dify = 0.0; 
float l2dify = 0.0;
float m2dify = 0.0;  
float n2dify = 0.0; 
float o2dify = 0.0;
float p2dify = 0.0;  
float q2dify = 0.0; 
float r2dify = 0.0;
float s2dify = 0.0;  
float t2dify = 0.0; 
float u2dify = 0.0;
float v2dify = 0.0;  
float w2dify = 0.0; 
float x2dify = 0.0;
float y2dify = 0.0; 
float z2dify = 0.0;

void setup() 
{
  size(720, 200);
  ax = 96;
  bx = 256;
  cx = random(32, 688);
  dx = 384;
  ex = 320;
  fx = random(32, 688);
  gx = random(32, 688);
  hx = 128;
  ix = random(32, 688);
  jx = random(32, 688);
  kx = random(32, 688);
  lx = 288;
  mx = random(32, 688);
  nx = 352;
  ox = 160;
  px = random(32, 688);
  qx = random(32, 688);
  rx = 448;
  sx = random(32, 688);
  tx = random(32, 688);
  ux = random(32, 688);
  vx = random(32, 688);
  wx = random(32, 688);
  xx = 576;
  yx = 192;
  zx = random(32, 688);
  
  ay = 108;
  by = 108;
  cy = random(32, 64);
  dy = 108;
  ey = 108;
  fy = random(32, 64);
  gy = random(32, 64);
  hy = 108;
  iy = random(32, 64);
  jy = random(32, 64);
  ky = random(32, 64);
  ly = 108;
  my = random(32, 64);
  ny = 108;
  oy = 108;
  py = random(32, 64);
  qy = random(32, 64);
  ry = 108;
  sy = random(32, 64);
  ty = random(32, 64);
  uy = random(32, 64);
  vy = random(32, 64);
  wy = random(32, 64);
  xy = 108;
  yy = 108;
  zy = random(32, 64);
  
  a2x = random(32, 688);
  b2x = 512;
  c2x = random(32, 688);
  d2x = random(32, 688);
  e2x = 416;
  f2x = random(32, 688);
  g2x = random(32, 688);
  h2x = random(32, 688);
  i2x = random(32, 688);
  j2x = random(32, 688);
  k2x = random(32, 688);
  l2x = random(32, 688);
  m2x = random(32, 688);
  n2x = random(32, 688);
  o2x = 544;
  p2x = random(32, 688);
  q2x = random(32, 688);
  r2x = random(32, 688);
  s2x = random(32, 688);
  t2x = random(32, 688);
  u2x = random(32, 688);
  v2x = random(32, 688);
  w2x = random(32, 688);
  x2x = random(32, 688);
  y2x = random(32, 688);
  z2x = random(32, 688);
  
  a2y = random(136, 168);
  b2y = 108;
  c2y = random(136, 168);
  d2y = random(136, 168);
  e2y = 108;
  f2y = random(136, 168);
  g2y = random(136, 168);
  h2y = random(136, 168);
  i2y = random(136, 168);
  j2y = random(136, 168);
  k2y = random(136, 168);
  l2y = random(136, 168);
  m2y = random(136, 168);
  n2y = random(136, 168);
  o2y = 108;
  p2y = random(136, 168);
  q2y = random(136, 168);
  r2y = random(136, 168);
  s2y = random(136, 168);
  t2y = random(136, 168);
  u2y = random(136, 168);
  v2y = random(136, 168);
  w2y = random(136, 168);
  x2y = random(136, 168);
  y2y = random(136, 168);
  z2y = random(136, 168);
  
  rectMode(RADIUS);  
}

void draw() 
{ 
  background(255, 217);
  
  // A Test if the cursor is over the box 
  if (mouseX > ax-ss && mouseX < ax+ss && 
      mouseY > ay-ss && mouseY < ay+ss) {
    aover = true;  
    if(!aocked) { 
      stroke(255); 
      fill(153,135,135);
    } 
  } else {
    stroke(153);
    fill(153,135,135);
    aover = false;
  }
  
    // B Test if the cursor is over the box 
  if (mouseX > bx-ss && mouseX < bx+ss && 
      mouseY > by-ss && mouseY < by+ss) {
    bover = true;  
    if(!bocked) { 
      stroke(255); 
      fill(135,153,135);
    } 
  } else {
    stroke(153);
    fill(135,153,135);
    bover = false;
  }
  
      // C Test if the cursor is over the box 
  if (mouseX > cx-ss && mouseX < cx+ss && 
      mouseY > cy-ss && mouseY < cy+ss) {
    cover = true;  
    if(!cocked) { 
      stroke(255); 
      fill(135,135,153);
    } 
  } else {
    stroke(153);
    fill(135,135,153);
    cover = false;
  }
  
  // D Test if the cursor is over the box 
  if (mouseX > dx-ss && mouseX < dx+ss && 
      mouseY > dy-ss && mouseY < dy+ss) {
    dover = true;  
    if(!docked) { 
      stroke(255); 
      fill(153,135,135);
    } 
  } else {
    stroke(153);
    fill(153,135,135);
    dover = false;
  }
  
    // E Test if the cursor is over the box 
  if (mouseX > ex-ss && mouseX < ex+ss && 
      mouseY > ey-ss && mouseY < ey+ss) {
    eover = true;  
    if(!eocked) { 
      stroke(255); 
      fill(135,153,135);
    } 
  } else {
    stroke(153);
    fill(135,153,135);
    eover = false;
  }
  
    // F Test if the cursor is over the box 
  if (mouseX > fx-ss && mouseX < fx+ss && 
      mouseY > fy-ss && mouseY < fy+ss) {
    fover = true;  
    if(!focked) { 
      stroke(255); 
      fill(135,153,135);
    } 
  } else {
    stroke(153);
    fill(135,153,135);
    fover = false;
  }
  
      // G Test if the cursor is over the box 
  if (mouseX > gx-ss && mouseX < gx+ss && 
      mouseY > gy-ss && mouseY < gy+ss) {
    gover = true;  
    if(!gocked) { 
      stroke(255); 
      fill(135,135,153);
    } 
  } else {
    stroke(153);
    fill(135,135,153);
    gover = false;
  }

  // H Test if the cursor is over the box 
  if (mouseX > hx-ss && mouseX < hx+ss && 
      mouseY > hy-ss && mouseY < hy+ss) {
    hover = true;  
    if(!hocked) { 
      stroke(255); 
      fill(153,135,135);
    } 
  } else {
    stroke(153);
    fill(153,135,135);
    hover = false;
  }
  
    // I Test if the cursor is over the box 
  if (mouseX > ix-ss && mouseX < ix+ss && 
      mouseY > iy-ss && mouseY < iy+ss) {
    iover = true;  
    if(!iocked) { 
      stroke(255); 
      fill(135,153,135);
    } 
  } else {
    stroke(153);
    fill(135,153,135);
    iover = false;
  }
  
      // J Test if the cursor is over the box 
  if (mouseX > jx-ss && mouseX < jx+ss && 
      mouseY > jy-ss && mouseY < jy+ss) {
    jover = true;  
    if(!jocked) { 
      stroke(255); 
      fill(135,135,153);
    } 
  } else {
    stroke(153);
    fill(135,135,153);
    jover = false;
  }

  // K Test if the cursor is over the box 
  if (mouseX > kx-ss && mouseX < kx+ss && 
      mouseY > ky-ss && mouseY < ky+ss) {
    kover = true;  
    if(!kocked) { 
      stroke(255); 
      fill(153,135,135);
    } 
  } else {
    stroke(153);
    fill(153,135,135);
    kover = false;
  }
  
    // L Test if the cursor is over the box 
  if (mouseX > lx-ss && mouseX < lx+ss && 
      mouseY > ly-ss && mouseY < ly+ss) {
    lover = true;  
    if(!locked) { 
      stroke(255); 
      fill(135,153,135);
    } 
  } else {
    stroke(153);
    fill(135,153,135);
    lover = false;
  }
  
      // M Test if the cursor is over the box 
  if (mouseX > mx-ss && mouseX < mx+ss && 
      mouseY > my-ss && mouseY < my+ss) {
    mover = true;  
    if(!mocked) { 
      stroke(255); 
      fill(135,135,153);
    } 
  } else {
    stroke(153);
    fill(135,135,153);
    mover = false;
  }

  // N Test if the cursor is over the box 
  if (mouseX > nx-ss && mouseX < nx+ss && 
      mouseY > ny-ss && mouseY < ny+ss) {
    nover = true;  
    if(!nocked) { 
      stroke(255); 
      fill(153,135,135);
    } 
  } else {
    stroke(153);
    fill(153,135,135);
    nover = false;
  }
  
    // O Test if the cursor is over the box 
  if (mouseX > ox-ss && mouseX < ox+ss && 
      mouseY > oy-ss && mouseY < oy+ss) {
    oover = true;  
    if(!oocked) { 
      stroke(255); 
      fill(135,153,135);
    } 
  } else {
    stroke(153);
    fill(135,153,135);
    oover = false;
  }
  
      // P Test if the cursor is over the box 
  if (mouseX > px-ss && mouseX < px+ss && 
      mouseY > py-ss && mouseY < py+ss) {
    pover = true;  
    if(!pocked) { 
      stroke(255); 
      fill(135,135,153);
    } 
  } else {
    stroke(153);
    fill(135,135,153);
    pover = false;
  }

  // Q Test if the cursor is over the box 
  if (mouseX > qx-ss && mouseX < qx+ss && 
      mouseY > qy-ss && mouseY < qy+ss) {
    qover = true;  
    if(!qocked) { 
      stroke(255); 
      fill(153,135,135);
    } 
  } else {
    stroke(153);
    fill(153,135,135);
    qover = false;
  }
  
    // R Test if the cursor is over the box 
  if (mouseX > rx-ss && mouseX < rx+ss && 
      mouseY > ry-ss && mouseY < ry+ss) {
    rover = true;  
    if(!rocked) { 
      stroke(255); 
      fill(135,153,135);
    } 
  } else {
    stroke(153);
    fill(135,153,135);
    rover = false;
  }
  
      // S Test if the cursor is over the box 
  if (mouseX > sx-ss && mouseX < sx+ss && 
      mouseY > sy-ss && mouseY < sy+ss) {
    sover = true;  
    if(!socked) { 
      stroke(255); 
      fill(135,135,153);
    } 
  } else {
    stroke(153);
    fill(135,135,153);
    sover = false;
  }

  // T Test if the cursor is over the box 
  if (mouseX > tx-ss && mouseX < tx+ss && 
      mouseY > ty-ss && mouseY < ty+ss) {
    tover = true;  
    if(!tocked) { 
      stroke(255); 
      fill(153,135,135);
    } 
  } else {
    stroke(153);
    fill(153,135,135);
    tover = false;
  }
  
      // U Test if the cursor is over the box 
  if (mouseX > ux-ss && mouseX < ux+ss && 
      mouseY > uy-ss && mouseY < uy+ss) {
    uover = true;  
    if(!uocked) { 
      stroke(255); 
      fill(135,135,153);
    } 
  } else {
    stroke(153);
    fill(135,135,153);
    uover = false;
  }  
  
    // V Test if the cursor is over the box 
  if (mouseX > vx-ss && mouseX < vx+ss && 
      mouseY > vy-ss && mouseY < vy+ss) {
    vover = true;  
    if(!vocked) { 
      stroke(255); 
      fill(135,153,135);
    } 
  } else {
    stroke(153);
    fill(135,153,135);
    vover = false;
  }
  
      // W Test if the cursor is over the box 
  if (mouseX > wx-ss && mouseX < wx+ss && 
      mouseY > wy-ss && mouseY < wy+ss) {
    wover = true;  
    if(!wocked) { 
      stroke(255); 
      fill(135,135,153);
    } 
  } else {
    stroke(153);
    fill(135,135,153);
    wover = false;
  }

      // X Test if the cursor is over the box 
  if (mouseX > xx-ss && mouseX < xx+ss && 
      mouseY > xy-ss && mouseY < xy+ss) {
    xover = true;  
    if(!xocked) { 
      stroke(255); 
      fill(135,135,153);
    } 
  } else {
    stroke(153);
    fill(135,135,153);
    xover = false;
  }

  // Y Test if the cursor is over the box 
  if (mouseX > yx-ss && mouseX < yx+ss && 
      mouseY > yy-ss && mouseY < yy+ss) {
    yover = true;  
    if(!yocked) { 
      stroke(255); 
      fill(153,135,135);
    } 
  } else {
    stroke(153);
    fill(153,135,135);
    yover = false;
  }  
  
    // Z Test if the cursor is over the box 
  if (mouseX > zx-ss && mouseX < zx+ss && 
      mouseY > zy-ss && mouseY < zy+ss) {
    zover = true;  
    if(!zocked) { 
      stroke(255); 
      fill(135,153,135);
    } 
  } else {
    stroke(153);
    fill(135,153,135);
    zover = false;
  }

  
  // A2 Test if the cursor is over the box 
  if (mouseX > a2x-ss && mouseX < a2x+ss && 
      mouseY > a2y-ss && mouseY < a2y+ss) {
    a2over = true;  
    if(!a2ocked) { 
      stroke(255); 
      fill(153,135,135);
    } 
  } else {
    stroke(153);
    fill(153,135,135);
    a2over = false;
  }
  
    // B2 Test if the cursor is over the box 
  if (mouseX > b2x-ss && mouseX < b2x+ss && 
      mouseY > b2y-ss && mouseY < b2y+ss) {
    b2over = true;  
    if(!b2ocked) { 
      stroke(255); 
      fill(135,153,135);
    } 
  } else {
    stroke(153);
    fill(135,153,135);
    b2over = false;
  }
  
      // C2 Test if the cursor is over the box 
  if (mouseX > c2x-ss && mouseX < c2x+ss && 
      mouseY > c2y-ss && mouseY < c2y+ss) {
    c2over = true;  
    if(!c2ocked) { 
      stroke(255); 
      fill(135,135,153);
    } 
  } else {
    stroke(153);
    fill(135,135,153);
    c2over = false;
  }
  
  // D2 Test if the cursor is over the box 
  if (mouseX > d2x-ss && mouseX < d2x+ss && 
      mouseY > d2y-ss && mouseY < d2y+ss) {
    d2over = true;  
    if(!d2ocked) { 
      stroke(255); 
      fill(153,135,135);
    } 
  } else {
    stroke(153);
    fill(153,135,135);
    d2over = false;
  }
  
    // E2 Test if the cursor is over the box 
  if (mouseX > e2x-ss && mouseX < e2x+ss && 
      mouseY > e2y-ss && mouseY < e2y+ss) {
    e2over = true;  
    if(!e2ocked) { 
      stroke(255); 
      fill(135,153,135);
    } 
  } else {
    stroke(153);
    fill(135,153,135);
    e2over = false;
  }
  
    // F2 Test if the cursor is over the box 
  if (mouseX > f2x-ss && mouseX < f2x+ss && 
      mouseY > f2y-ss && mouseY < f2y+ss) {
    f2over = true;  
    if(!f2ocked) { 
      stroke(255); 
      fill(135,153,135);
    } 
  } else {
    stroke(153);
    fill(135,153,135);
    f2over = false;
  }
  
      // G2 Test if the cursor is over the box 
  if (mouseX > g2x-ss && mouseX < g2x+ss && 
      mouseY > g2y-ss && mouseY < g2y+ss) {
    g2over = true;  
    if(!g2ocked) { 
      stroke(255); 
      fill(135,135,153);
    } 
  } else {
    stroke(153);
    fill(135,135,153);
    g2over = false;
  }

  // H2 Test if the cursor is over the box 
  if (mouseX > h2x-ss && mouseX < h2x+ss && 
      mouseY > h2y-ss && mouseY < h2y+ss) {
    h2over = true;  
    if(!h2ocked) { 
      stroke(255); 
      fill(153,135,135);
    } 
  } else {
    stroke(153);
    fill(153,135,135);
    h2over = false;
  }
  
    // I2 Test if the cursor is over the box 
  if (mouseX > i2x-ss && mouseX < i2x+ss && 
      mouseY > i2y-ss && mouseY < i2y+ss) {
    i2over = true;  
    if(!i2ocked) { 
      stroke(255); 
      fill(135,153,135);
    } 
  } else {
    stroke(153);
    fill(135,153,135);
    i2over = false;
  }
  
      // J2 Test if the cursor is over the box 
  if (mouseX > j2x-ss && mouseX < j2x+ss && 
      mouseY > j2y-ss && mouseY < j2y+ss) {
    j2over = true;  
    if(!j2ocked) { 
      stroke(255); 
      fill(135,135,153);
    } 
  } else {
    stroke(153);
    fill(135,135,153);
    j2over = false;
  }

  // K2 Test if the cursor is over the box 
  if (mouseX > k2x-ss && mouseX < k2x+ss && 
      mouseY > k2y-ss && mouseY < k2y+ss) {
    k2over = true;  
    if(!k2ocked) { 
      stroke(255); 
      fill(153,135,135);
    } 
  } else {
    stroke(153);
    fill(153,135,135);
    k2over = false;
  }
  
    // L2 Test if the cursor is over the box 
  if (mouseX > l2x-ss && mouseX < l2x+ss && 
      mouseY > l2y-ss && mouseY < l2y+ss) {
    l2over = true;  
    if(!l2ocked) { 
      stroke(255); 
      fill(135,153,135);
    } 
  } else {
    stroke(153);
    fill(135,153,135);
    l2over = false;
  }
  
      // M2 Test if the cursor is over the box 
  if (mouseX > m2x-ss && mouseX < m2x+ss && 
      mouseY > m2y-ss && mouseY < m2y+ss) {
    m2over = true;  
    if(!m2ocked) { 
      stroke(255); 
      fill(135,135,153);
    } 
  } else {
    stroke(153);
    fill(135,135,153);
    m2over = false;
  }

  // N2 Test if the cursor is over the box 
  if (mouseX > n2x-ss && mouseX < n2x+ss && 
      mouseY > n2y-ss && mouseY < n2y+ss) {
    n2over = true;  
    if(!n2ocked) { 
      stroke(255); 
      fill(153,135,135);
    } 
  } else {
    stroke(153);
    fill(153,135,135);
    n2over = false;
  }
  
    // O2 Test if the cursor is over the box 
  if (mouseX > o2x-ss && mouseX < o2x+ss && 
      mouseY > o2y-ss && mouseY < o2y+ss) {
    o2over = true;  
    if(!o2ocked) { 
      stroke(255); 
      fill(135,153,135);
    } 
  } else {
    stroke(153);
    fill(135,153,135);
    o2over = false;
  }
  
      // P2 Test if the cursor is over the box 
  if (mouseX > p2x-ss && mouseX < p2x+ss && 
      mouseY > p2y-ss && mouseY < p2y+ss) {
    p2over = true;  
    if(!p2ocked) { 
      stroke(255); 
      fill(135,135,153);
    } 
  } else {
    stroke(153);
    fill(135,135,153);
    p2over = false;
  }

  // Q2 Test if the cursor is over the box 
  if (mouseX > q2x-ss && mouseX < q2x+ss && 
      mouseY > q2y-ss && mouseY < q2y+ss) {
    q2over = true;  
    if(!q2ocked) { 
      stroke(255); 
      fill(153,135,135);
    } 
  } else {
    stroke(153);
    fill(153,135,135);
    q2over = false;
  }
  
    // R2 Test if the cursor is over the box 
  if (mouseX > r2x-ss && mouseX < r2x+ss && 
      mouseY > r2y-ss && mouseY < r2y+ss) {
    r2over = true;  
    if(!r2ocked) { 
      stroke(255); 
      fill(135,153,135);
    } 
  } else {
    stroke(153);
    fill(135,153,135);
    r2over = false;
  }
  
      // S2 Test if the cursor is over the box 
  if (mouseX > s2x-ss && mouseX < s2x+ss && 
      mouseY > s2y-ss && mouseY < s2y+ss) {
    s2over = true;  
    if(!s2ocked) { 
      stroke(255); 
      fill(135,135,153);
    } 
  } else {
    stroke(153);
    fill(135,135,153);
    s2over = false;
  }

  // T2 Test if the cursor is over the box 
  if (mouseX > t2x-ss && mouseX < t2x+ss && 
      mouseY > t2y-ss && mouseY < t2y+ss) {
    t2over = true;  
    if(!t2ocked) { 
      stroke(255); 
      fill(153,135,135);
    } 
  } else {
    stroke(153);
    fill(153,135,135);
    t2over = false;
  }
  
      // U2 Test if the cursor is over the box 
  if (mouseX > u2x-ss && mouseX < u2x+ss && 
      mouseY > u2y-ss && mouseY < u2y+ss) {
    u2over = true;  
    if(!u2ocked) { 
      stroke(255); 
      fill(135,135,153);
    } 
  } else {
    stroke(153);
    fill(135,135,153);
    u2over = false;
  }  
  
    // V2 Test if the cursor is over the box 
  if (mouseX > v2x-ss && mouseX < v2x+ss && 
      mouseY > v2y-ss && mouseY < v2y+ss) {
    v2over = true;  
    if(!v2ocked) { 
      stroke(255); 
      fill(135,153,135);
    } 
  } else {
    stroke(153);
    fill(135,153,135);
    v2over = false;
  }
  
      // W2 Test if the cursor is over the box 
  if (mouseX > w2x-ss && mouseX < w2x+ss && 
      mouseY > w2y-ss && mouseY < w2y+ss) {
    w2over = true;  
    if(!w2ocked) { 
      stroke(255); 
      fill(135,135,153);
    } 
  } else {
    stroke(153);
    fill(135,135,153);
    w2over = false;
  }

      // X2 Test if the cursor is over the box 
  if (mouseX > x2x-ss && mouseX < x2x+ss && 
      mouseY > x2y-ss && mouseY < x2y+ss) {
    x2over = true;  
    if(!x2ocked) { 
      stroke(255); 
      fill(135,135,153);
    } 
  } else {
    stroke(153);
    fill(135,135,153);
    x2over = false;
  }

  // Y2 Test if the cursor is over the box 
  if (mouseX > y2x-ss && mouseX < y2x+ss && 
      mouseY > y2y-ss && mouseY < y2y+ss) {
    y2over = true;  
    if(!y2ocked) { 
      stroke(255); 
      fill(153,135,135);
    } 
  } else {
    stroke(153);
    fill(153,135,135);
    y2over = false;
  }  
  
    // Z2 Test if the cursor is over the box 
  if (mouseX > z2x-ss && mouseX < z2x+ss && 
      mouseY > z2y-ss && mouseY < z2y+ss) {
    z2over = true;  
    if(!z2ocked) { 
      stroke(255); 
      fill(135,153,135);
    } 
  } else {
    stroke(153);
    fill(135,153,135);
    z2over = false;
  }

  
  // Draw the letters
  font = createFont("Arial", sf);
  textFont(font, sf);
  
  text("A", ax, ay, ss, ss);
  text("B", bx, by, ss, ss);
  text("C", cx, cy, ss, ss);
  text("D", dx, dy, ss, ss);
  text("E", ex, ey, ss, ss);
  text("F", fx, fy, ss, ss);
  text("G", gx, gy, ss, ss);
  text("H", hx, hy, ss, ss);
  text("I", ix, iy, ss, ss);
  text("J", jx, jy, ss, ss);
  text("K", kx, ky, ss, ss);
  text("L", lx, ly, ss, ss);
  text("M", mx, my, ss, ss);
  text("N", nx, ny, ss, ss);
  text("O", ox, oy, ss, ss);
  text("P", px, py, ss, ss);
  text("Q", qx, qy, ss, ss);
  text("R", rx, ry, ss, ss);
  text("S", sx, sy, ss, ss);
  text("T", tx, ty, ss, ss);
  text("U", ux, uy, ss, ss);
  text("V", vx, vy, ss, ss);
  text("W", wx, wy, ss, ss);
  text("X", xx, xy, ss, ss);
  text("Y", yx, yy, ss, ss);
  text("Z", zx, zy, ss, ss);

  text("A", a2x, a2y, ss, ss);
  text("B", b2x, b2y, ss, ss);
  text("C", c2x, c2y, ss, ss);
  text("D", d2x, d2y, ss, ss);
  text("E", e2x, e2y, ss, ss);
  text("F", f2x, f2y, ss, ss);
  text("G", g2x, g2y, ss, ss);
  text("H", h2x, h2y, ss, ss);
  text("I", i2x, i2y, ss, ss);
  text("J", j2x, j2y, ss, ss);
  text("K", k2x, k2y, ss, ss);
  text("L", l2x, l2y, ss, ss);
  text("M", m2x, m2y, ss, ss);
  text("N", n2x, n2y, ss, ss);
  text("O", o2x, o2y, ss, ss);
  text("P", p2x, p2y, ss, ss);
  text("Q", q2x, q2y, ss, ss);
  text("R", r2x, r2y, ss, ss);
  text("S", s2x, s2y, ss, ss);
  text("T", t2x, t2y, ss, ss);
  text("U", u2x, u2y, ss, ss);
  text("V", v2x, v2y, ss, ss);
  text("W", w2x, w2y, ss, ss);
  text("X", x2x, x2y, ss, ss);
  text("Y", y2x, y2y, ss, ss);
  text("Z", z2x, z2y, ss, ss);
}

void mousePressed() {
  if(aover) { 
    aocked = true; 
    fill(255, 255, 255);
  } else {
    aocked = false;
  }
adifx = mouseX-ax;
adify = mouseY-ay;

  if(bover) { 
    bocked = true; 
    fill(255, 255, 255);
  } else {
    bocked = false;
  }
bdifx = mouseX-bx;  
bdify = mouseY-by;  

  if(cover) { 
    cocked = true; 
    fill(255, 255, 255);
  } else {
    cocked = false;
  }
cdifx = mouseX-cx; 
cdify = mouseY-cy; 

  if(dover) { 
    docked = true; 
    fill(255, 255, 255);
  } else {
    docked = false;
  }
ddifx = mouseX-dx;
ddify = mouseY-dy;

  if(eover) { 
    eocked = true; 
    fill(255, 255, 255);
  } else {
    eocked = false;
  }
edifx = mouseX-ex;  
edify = mouseY-ey;  

  if(fover) { 
    focked = true; 
    fill(255, 255, 255);
  } else {
    focked = false;
  }
fdifx = mouseX-fx; 
fdify = mouseY-fy; 

  if(gover) { 
    gocked = true; 
    fill(255, 255, 255);
  } else {
    gocked = false;
  }
gdifx = mouseX-gx;
gdify = mouseY-gy;

  if(hover) { 
    hocked = true; 
    fill(255, 255, 255);
  } else {
    hocked = false;
  }
hdifx = mouseX-hx;  
hdify = mouseY-hy;  

  if(iover) { 
    iocked = true; 
    fill(255, 255, 255);
  } else {
    iocked = false;
  }
idifx = mouseX-ix; 
idify = mouseY-iy; 

  if(jover) { 
    jocked = true; 
    fill(255, 255, 255);
  } else {
    jocked = false;
  }
jdifx = mouseX-jx;
jdify = mouseY-jy;

  if(kover) { 
    kocked = true; 
    fill(255, 255, 255);
  } else {
    kocked = false;
  }
kdifx = mouseX-kx;  
kdify = mouseY-ky;  

  if(lover) { 
    locked = true; 
    fill(255, 255, 255);
  } else {
    locked = false;
  }
ldifx = mouseX-lx; 
ldify = mouseY-ly; 

  if(mover) { 
    mocked = true; 
    fill(255, 255, 255);
  } else {
    mocked = false;
  }
mdifx = mouseX-mx;
mdify = mouseY-my;

  if(nover) { 
    nocked = true; 
    fill(255, 255, 255);
  } else {
    nocked = false;
  }
ndifx = mouseX-nx;  
ndify = mouseY-ny; 

  if(oover) { 
    oocked = true; 
    fill(255, 255, 255);
  } else {
    oocked = false;
  }
odifx = mouseX-ox; 
odify = mouseY-oy; 

  if(pover) { 
    pocked = true; 
    fill(255, 255, 255);
  } else {
    pocked = false;
  }
pdifx = mouseX-px;
pdify = mouseY-py;

  if(qover) { 
    qocked = true; 
    fill(255, 255, 255);
  } else {
    qocked = false;
  }
qdifx = mouseX-qx;
qdify = mouseY-qy;

  if(rover) { 
    rocked = true; 
    fill(255, 255, 255);
  } else {
    rocked = false;
  }
rdifx = mouseX-rx; 
rdify = mouseY-ry; 

  if(sover) { 
    socked = true; 
    fill(255, 255, 255);
  } else {
    socked = false;
  }
sdifx = mouseX-sx;
sdify = mouseY-sy;

  if(tover) { 
    tocked = true; 
    fill(255, 255, 255);
  } else {
    tocked = false;
  }
tdifx = mouseX-tx;  
tdify = mouseY-ty;  

  if(uover) { 
    uocked = true; 
    fill(255, 255, 255);
  } else {
    uocked = false;
  }
udifx = mouseX-ux; 
udify = mouseY-uy; 

  if(vover) { 
    vocked = true; 
    fill(255, 255, 255);
  } else {
    vocked = false;
  }
vdifx = mouseX-vx;
vdify = mouseY-vy;

  if(wover) { 
    wocked = true; 
    fill(255, 255, 255);
  } else {
    wocked = false;
  }
wdifx = mouseX-wx;  
wdify = mouseY-wy;

  if(xover) { 
    xocked = true; 
    fill(255, 255, 255);
  } else {
    xocked = false;
  }
xdifx = mouseX-xx; 
xdify = mouseY-xy; 

  if(yover) { 
    yocked = true; 
    fill(255, 255, 255);
  } else {
    yocked = false;
  }
ydifx = mouseX-yx;  
ydify = mouseY-yy;

  if(zover) { 
    zocked = true; 
    fill(255, 255, 255);
  } else {
    zocked = false;
  }
zdifx = mouseX-zx; 
zdify = mouseY-zy; 


  if(a2over) { 
    a2ocked = true; 
    fill(255, 255, 255);
  } else {
    a2ocked = false;
  }
a2difx = mouseX-a2x;
a2dify = mouseY-a2y;

  if(b2over) { 
    b2ocked = true; 
    fill(255, 255, 255);
  } else {
    b2ocked = false;
  }
b2difx = mouseX-b2x;  
b2dify = mouseY-b2y;  

  if(c2over) { 
    c2ocked = true; 
    fill(255, 255, 255);
  } else {
    c2ocked = false;
  }
c2difx = mouseX-c2x; 
c2dify = mouseY-c2y; 

  if(d2over) { 
    d2ocked = true; 
    fill(255, 255, 255);
  } else {
    d2ocked = false;
  }
d2difx = mouseX-d2x;
d2dify = mouseY-d2y;

  if(e2over) { 
    e2ocked = true; 
    fill(255, 255, 255);
  } else {
    e2ocked = false;
  }
e2difx = mouseX-e2x;  
e2dify = mouseY-e2y;  

  if(f2over) { 
    f2ocked = true; 
    fill(255, 255, 255);
  } else {
    f2ocked = false;
  }
f2difx = mouseX-f2x; 
f2dify = mouseY-f2y; 

  if(g2over) { 
    g2ocked = true; 
    fill(255, 255, 255);
  } else {
    g2ocked = false;
  }
g2difx = mouseX-g2x;
g2dify = mouseY-g2y;

  if(h2over) { 
    h2ocked = true; 
    fill(255, 255, 255);
  } else {
    h2ocked = false;
  }
h2difx = mouseX-h2x;  
h2dify = mouseY-h2y;  

  if(i2over) { 
    i2ocked = true; 
    fill(255, 255, 255);
  } else {
    i2ocked = false;
  }
i2difx = mouseX-i2x; 
i2dify = mouseY-i2y; 

  if(j2over) { 
    j2ocked = true; 
    fill(255, 255, 255);
  } else {
    j2ocked = false;
  }
j2difx = mouseX-j2x;
j2dify = mouseY-j2y;

  if(k2over) { 
    k2ocked = true; 
    fill(255, 255, 255);
  } else {
    k2ocked = false;
  }
k2difx = mouseX-k2x;  
k2dify = mouseY-k2y;  

  if(l2over) { 
    l2ocked = true; 
    fill(255, 255, 255);
  } else {
    l2ocked = false;
  }
l2difx = mouseX-l2x; 
l2dify = mouseY-l2y; 

  if(m2over) { 
    m2ocked = true; 
    fill(255, 255, 255);
  } else {
    m2ocked = false;
  }
m2difx = mouseX-m2x;
m2dify = mouseY-m2y;

  if(n2over) { 
    n2ocked = true; 
    fill(255, 255, 255);
  } else {
    n2ocked = false;
  }
n2difx = mouseX-n2x;  
n2dify = mouseY-n2y; 

  if(o2over) { 
    o2ocked = true; 
    fill(255, 255, 255);
  } else {
    o2ocked = false;
  }
o2difx = mouseX-o2x; 
o2dify = mouseY-o2y; 

  if(p2over) { 
    p2ocked = true; 
    fill(255, 255, 255);
  } else {
    p2ocked = false;
  }
p2difx = mouseX-p2x;
p2dify = mouseY-p2y;

  if(q2over) { 
    q2ocked = true; 
    fill(255, 255, 255);
  } else {
    q2ocked = false;
  }
q2difx = mouseX-q2x;
q2dify = mouseY-q2y;

  if(r2over) { 
    r2ocked = true; 
    fill(255, 255, 255);
  } else {
    r2ocked = false;
  }
r2difx = mouseX-r2x; 
r2dify = mouseY-r2y; 

  if(s2over) { 
    s2ocked = true; 
    fill(255, 255, 255);
  } else {
    s2ocked = false;
  }
s2difx = mouseX-s2x;
s2dify = mouseY-s2y;

  if(t2over) { 
    t2ocked = true; 
    fill(255, 255, 255);
  } else {
    t2ocked = false;
  }
t2difx = mouseX-t2x;  
t2dify = mouseY-t2y;  

  if(u2over) { 
    u2ocked = true; 
    fill(255, 255, 255);
  } else {
    u2ocked = false;
  }
u2difx = mouseX-u2x; 
u2dify = mouseY-u2y; 

  if(v2over) { 
    v2ocked = true; 
    fill(255, 255, 255);
  } else {
    v2ocked = false;
  }
v2difx = mouseX-v2x;
v2dify = mouseY-v2y;

  if(w2over) { 
    w2ocked = true; 
    fill(255, 255, 255);
  } else {
    w2ocked = false;
  }
w2difx = mouseX-w2x;  
w2dify = mouseY-w2y;

  if(x2over) { 
    x2ocked = true; 
    fill(255, 255, 255);
  } else {
    x2ocked = false;
  }
x2difx = mouseX-x2x; 
x2dify = mouseY-x2y; 

  if(y2over) { 
    y2ocked = true; 
    fill(255, 255, 255);
  } else {
    y2ocked = false;
  }
y2difx = mouseX-y2x;  
y2dify = mouseY-y2y;

  if(z2over) { 
    z2ocked = true; 
    fill(255, 255, 255);
  } else {
    z2ocked = false;
  }
z2difx = mouseX-z2x; 
z2dify = mouseY-z2y; 

}


void mouseDragged() {
  if(aocked) {
    ax = mouseX-adifx; 
    ay = mouseY-adify;     
  }
  if(bocked) {
    bx = mouseX-bdifx; 
    by = mouseY-bdify;     
  }
  if(cocked) {
    cx = mouseX-cdifx; 
    cy = mouseY-cdify;     
  }
  if(docked) {
    dx = mouseX-ddifx; 
    dy = mouseY-ddify;     
  }
  if(eocked) {
    ex = mouseX-edifx; 
    ey = mouseY-edify;     
  }
  if(focked) {
    fx = mouseX-fdifx; 
    fy = mouseY-fdify;     
  }
  if(gocked) {
    gx = mouseX-gdifx; 
    gy = mouseY-gdify;     
  }
  if(hocked) {
    hx = mouseX-hdifx; 
    hy = mouseY-hdify;     
  }
  if(iocked) {
    ix = mouseX-idifx; 
    iy = mouseY-idify;     
  }
  if(jocked) {
    jx = mouseX-jdifx; 
    jy = mouseY-jdify;     
  }
  if(kocked) {
    kx = mouseX-kdifx; 
    ky = mouseY-kdify;     
  }
  if(locked) {
    lx = mouseX-ldifx; 
    ly = mouseY-ldify;     
  }
  if(mocked) {
    mx = mouseX-mdifx; 
    my = mouseY-mdify;     
  }
  if(nocked) {
    nx = mouseX-ndifx; 
    ny = mouseY-ndify;     
  }
  if(oocked) {
    ox = mouseX-odifx; 
    oy = mouseY-odify;     
  }
  if(pocked) {
    px = mouseX-pdifx; 
    py = mouseY-pdify;     
  }
  if(qocked) {
    qx = mouseX-qdifx; 
    qy = mouseY-qdify;     
  }
  if(rocked) {
    rx = mouseX-rdifx; 
    ry = mouseY-rdify;     
  }
  if(socked) {
    sx = mouseX-sdifx; 
    sy = mouseY-sdify;     
  }
  if(tocked) {
    tx = mouseX-tdifx; 
    ty = mouseY-tdify;     
  }
  if(uocked) {
    ux = mouseX-udifx; 
    uy = mouseY-udify;     
  }
  if(vocked) {
    vx = mouseX-vdifx; 
    vy = mouseY-vdify;     
  }
  if(wocked) {
    wx = mouseX-wdifx; 
    wy = mouseY-wdify;     
  }
  if(xocked) {
    xx = mouseX-xdifx; 
    xy = mouseY-xdify;     
  }  
  if(yocked) {
    yx = mouseX-ydifx; 
    yy = mouseY-ydify;     
  }
  if(zocked) {
    zx = mouseX-zdifx; 
    zy = mouseY-zdify;     
  }
  
  
  if(a2ocked) {
    a2x = mouseX-a2difx; 
    a2y = mouseY-a2dify;     
  }
  if(b2ocked) {
    b2x = mouseX-b2difx; 
    b2y = mouseY-b2dify;     
  }
  if(c2ocked) {
    c2x = mouseX-c2difx; 
    c2y = mouseY-c2dify;     
  }
  if(d2ocked) {
    d2x = mouseX-d2difx; 
    d2y = mouseY-d2dify;     
  }
  if(e2ocked) {
    e2x = mouseX-e2difx; 
    e2y = mouseY-e2dify;     
  }
  if(f2ocked) {
    f2x = mouseX-f2difx; 
    f2y = mouseY-f2dify;     
  }
  if(g2ocked) {
    g2x = mouseX-g2difx; 
    g2y = mouseY-g2dify;     
  }
  if(h2ocked) {
    h2x = mouseX-h2difx; 
    h2y = mouseY-h2dify;     
  }
  if(i2ocked) {
    i2x = mouseX-i2difx; 
    i2y = mouseY-i2dify;     
  }
  if(j2ocked) {
    j2x = mouseX-j2difx; 
    j2y = mouseY-j2dify;     
  }
  if(k2ocked) {
    k2x = mouseX-k2difx; 
    k2y = mouseY-k2dify;     
  }
  if(l2ocked) {
    l2x = mouseX-l2difx; 
    l2y = mouseY-l2dify;     
  }
  if(m2ocked) {
    m2x = mouseX-m2difx; 
    m2y = mouseY-m2dify;     
  }
  if(n2ocked) {
    n2x = mouseX-n2difx; 
    n2y = mouseY-n2dify;     
  }
  if(o2ocked) {
    o2x = mouseX-o2difx; 
    o2y = mouseY-o2dify;     
  }
  if(p2ocked) {
    p2x = mouseX-p2difx; 
    p2y = mouseY-p2dify;     
  }
  if(q2ocked) {
    q2x = mouseX-q2difx; 
    q2y = mouseY-q2dify;     
  }
  if(r2ocked) {
    r2x = mouseX-r2difx; 
    r2y = mouseY-r2dify;     
  }
  if(s2ocked) {
    s2x = mouseX-s2difx; 
    s2y = mouseY-s2dify;     
  }
  if(t2ocked) {
    t2x = mouseX-t2difx; 
    t2y = mouseY-t2dify;     
  }
  if(u2ocked) {
    u2x = mouseX-u2difx; 
    u2y = mouseY-u2dify;     
  }
  if(v2ocked) {
    v2x = mouseX-v2difx; 
    v2y = mouseY-v2dify;     
  }
  if(w2ocked) {
    w2x = mouseX-w2difx; 
    w2y = mouseY-w2dify;     
  }
  if(x2ocked) {
    x2x = mouseX-x2difx; 
    x2y = mouseY-x2dify;     
  }  
  if(y2ocked) {
    y2x = mouseX-y2difx; 
    y2y = mouseY-y2dify;     
  }
  if(z2ocked) {
    z2x = mouseX-z2difx; 
    z2y = mouseY-z2dify;     
  }  
  
}

void mouseReleased() {
  aocked = false;
  bocked = false;
  cocked = false;
  docked = false;
  eocked = false;
  focked = false;
  gocked = false;
  hocked = false;
  iocked = false;
  jocked = false;
  kocked = false;
  locked = false;
  mocked = false;
  nocked = false;
  oocked = false;
  pocked = false;
  qocked = false;
  rocked = false;
  socked = false;
  tocked = false;
  uocked = false;
  vocked = false;
  wocked = false;
  xocked = false;  
  yocked = false;
  zocked = false;  
  
  a2ocked = false;
  b2ocked = false;
  c2ocked = false;
  d2ocked = false;
  e2ocked = false;
  f2ocked = false;
  g2ocked = false;
  h2ocked = false;
  i2ocked = false;
  j2ocked = false;
  k2ocked = false;
  l2ocked = false;
  m2ocked = false;
  n2ocked = false;
  o2ocked = false;
  p2ocked = false;
  q2ocked = false;
  r2ocked = false;
  s2ocked = false;
  t2ocked = false;
  u2ocked = false;
  v2ocked = false;
  w2ocked = false;
  x2ocked = false;  
  y2ocked = false;
  z2ocked = false;    
}


