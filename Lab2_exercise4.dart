void main(){
  String? middleName; //ประกาศตัวแปร (nullable)
  String city = "Nakorn Sawan"; //ประกาศตัวแปร (non-nullable)

  int middleNameLength = middleName?.length ?? 0; //พิมพ์ความยาวของ middleName ถ้า middleName เป็น null ให้ใช้ค่า 0 แทน
  print("Middle name length : $middleNameLength");

  print("City length : ${city.length}"); //พิมพ์ความยาวของ city


  print("Middle name before assignment : $middleName");

  middleName ??= "N/A"; //กำหนดค่าให้ middleName
  print("Middle name after assignment : $middleName");


}