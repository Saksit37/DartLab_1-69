Stream<String> countdown(int from) async* {
  for (int i = from; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1));
    yield "$i";
  }

  yield "หมดเวลา!";
}

void main() async {
  print("\nเริ่มนับถอยหลัง\n");

  await for (var value in countdown(5)) { // 5 4 3 2 1
    print(value);
  }

  print("\nจบการทำงาน");
}