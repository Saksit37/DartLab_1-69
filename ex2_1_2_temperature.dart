class Temperature {
  double _celsius;

  Temperature(this._celsius);

  double get celsius => _celsius;

  set celsius(double value){
    if (value >= -273.15) {
      _celsius = value;
    } else {
      print('อุณหภูมิจะต่ำกว่า -273.15(ศูนย์สัมบูรณ์) องศาเซลเซียสไม่ได้');
    }
  }

  double get fahrenheit => (_celsius * 9 / 5) + 32;

}

void main() {
  Temperature temp = Temperature(25.0);

  print("\nอุณหภูมิเริ่มต้น");
  print("------------------------------");
  print("Celsius      : ${temp.celsius} °C");
  print("Fahrenheit   : ${temp.fahrenheit} °F");

  print("\n================================");
  print("ลองทดสอบอุณหภูมิที่ต่ำกว่า -273.15 °C");
  print("================================");
  print("ให้เป็น         : -300.0 °C");

  temp.celsius = -300.0;

  print("\n------------------------------");
  print("อุณหภูมิปัจจุบัน");
  print("------------------------------");
  print("Celsius      : ${temp.celsius} °C");
  print("Fahrenheit   : ${temp.fahrenheit} °F");

  print("\n================================");
}