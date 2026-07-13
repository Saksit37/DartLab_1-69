import 'dart:async';

void main(){
  StreamController<String> controller = StreamController<String>();

  print("===== Notification =====\n");

  controller.stream.listen(
    (message){
      print("แจ้งเตือน : $message");
    },
    onDone: (){
      print("\n===== สิ้นสุดการทำงาน =====");
    },
  );

  controller.add("มีข้อความใหม่");
  controller.add("มีคนกดรีโพสต์ของคุณ");
  controller.add("มีการติดต่อเข้ามา");

  controller.close();

}