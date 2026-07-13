Future<String> testSystem() {
  return Future.delayed(Duration(seconds: 3), () => '2. โหลดเสร็จแล้ว');
}

void main() async {
  print("1. เริ่ม");
  
  String name = await testSystem();
  print(name);
  
  print("3. จบ");
}