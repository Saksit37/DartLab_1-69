Future<String> testSystem() {
  return Future.delayed(Duration(seconds: 3), () => '2. โหลดเสร็จแล้ว');
}

void main() {
  print("1. เริ่ม");
  testSystem().then((value) => print(value));
  print("3. จบ");
}