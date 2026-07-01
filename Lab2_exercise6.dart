void executeOperation(int a, int b, int Function(int, int) operation) {
  var result = operation(a, b);
}

  int areaRectangle(int a, int b) { //พื้นที่สี่เหลี่ยมผืนผ้า
    return a * b;
  }

  int areaTriangle(int a, int b) { //พื้นที่สามเหลี่ยม
    return (a * b) ~/ 2;
  }

  double areaCylinder(double r, double h) { //พื้นที่ผิวกระบอก
    return 2 * 3.14 * r * h;
  }

  double volumeCylinder(double r, double h) { //ปริมาตรกระบอก
    return 3.14 * r * r * h;
  }
  
  //ปริมาตรของสี่เหลี่ยมผืนผ้า ไม่มี เพราะเป็นรูปสองมิติ
  //ปริมาตรของสามเหลี่ยม ไม่มี เพราะเป็นรูปสองมิติ

  

void main() {
  print("\n=== Area ===");
  // executeOperation(7, 5, areaRectangle);
  // executeOperation(8, 6, areaTriangle);
  print("Area Rectangle : ${areaRectangle(7, 5)}");
  print("Area Triangle : ${areaTriangle(8, 6)}");
  print("Area Cylinder : ${areaCylinder(5, 3)}");

  print("\n=== Volume ===");
  print("Volume Cylinder : ${volumeCylinder(5, 3)}");
}