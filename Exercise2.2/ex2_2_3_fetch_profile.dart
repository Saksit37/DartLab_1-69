import 'dart:io';

Future<Map<String, dynamic>> fetchProfile(int userId) async {
  await Future.delayed(Duration(seconds: 2));
    if (userId <= 0) {
      throw Exception('รหัสไม่ถูกต้อง');
    }
    return {
      'name': 'Somying',
      'age': 21,
      'email': 's0my1ngg76@nu.ac.th'
    };
}

void main() async {
  stdout.write("\nกรุณากรอก User ID : ");
  int userId = int.parse(stdin.readLineSync()!);

  try {
    print("\nกำลังโหลดข้อมูล...");
    var profile = await fetchProfile(userId);

    print("\n===== ข้อมูลผู้ใช้ =====");
    print("ชื่อ : ${profile['name']}");
    print("อายุ : ${profile['age']}");
    print("อีเมล : ${profile['email']}");
    
  } catch (error) {
    print("เกิดข้อผิดพลาด : $error");

  } finally {
    print("\nเสร็จสิ้นการทำงาน");
  }
}