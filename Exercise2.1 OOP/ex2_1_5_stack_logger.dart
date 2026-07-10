mixin Loggable {
  void log(String msg) {
    print("${DateTime.now()} : $msg");
  }
}

class Stack<T> with Loggable {
  List<T> data = [];

  void push(T value) {
    data.add(value);
    log("เพิ่มข้อมูล $value");
  }

//ลบ
  T? pop() {
    if (data.isEmpty) {
      log("ไม่สามารถลบข้อมูลได้ เพราะ Stack ว่าง");
      return null;
    }

    T value = data.removeLast();
    log("นำข้อมูล $value ออกจาก Stack");
    return value;
  }

//แสดงข้อมูล
  void showStack() {
    print("ข้อมูลใน Stack : $data");
  }
}

void main() {
  Stack<String> books = Stack();

  books.push("กะเพราไก่ชิ้น");
  books.push("ข้าวผัดหมูกรอบ");
  books.push("ต้มยำกุ้ง");

  books.showStack();

  books.pop();

  books.showStack();
}