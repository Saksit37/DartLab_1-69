class Temperature {
  double _celsius;

  Temperature(this._celsius);

  double get celsius => _celsius;

  set celsius(double value){
    if (value >= -273.15) {
      _celsius = value;
    } else {
      print("\nอุณหภูมิจะต่ำกว่า -273.15(ศูนย์สัมบูรณ์) องศาเซลเซียสไม่ได้");
    }
  }

  double get fahrenheit => (_celsius * 9 / 5) + 32;

}

void main() {
  Temperature temp = Temperature(45.0);
  print("เริ่มต้น : ${temp.celsius} °C");
  print("องศาฟาเรนไฮต์ : ${temp.fahrenheit} °F");

  temp.celsius = 100;
  print("\nเปลี่ยนเป็น : ${temp.celsius} °C");
  print("องศาฟาเรนไฮต์ : ${temp.fahrenheit} °F");

  // ลองทดสอบอุณหภูมิที่ต่ำกว่า -273.15 °C
  temp.celsius = -300;
  print("ค่าปัจจุบัน : ${temp.celsius} °C");
}