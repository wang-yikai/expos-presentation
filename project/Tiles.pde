class Tile {
  Building store;
  
  //color
  int r = 0;
  int g = 200;
  int b = 0;
  
  //dimensions
  int w, l;
  int x, y;
  
  Tile(int coordx, int coordy, int wid, int len) {
    x = coordx;
    y = coordy;
    
    w = wid;
    l = len;
  }
  
  
  Tile(int coordx, int coordy, int wid, int len, int color_r, int color_g, int color_b) {
    x = coordx;
    y = coordy;
    
    w = wid;
    l = len;
    
    r = color_r;
    g = color_g;
    b = color_b;
  }
  
  void set_store(Building b) {
    store = b;
  }
  
  boolean is_under(int X, int Y) {
    return (X >= x && X <= x+w && Y >= y && Y < y+l);
  }
  
  void draw() {
    if (store == null) {
      fill(r, g, b);
      rect(x, y, w, l);
    }
    
    else {
      store.draw();
    }
    
  }


}