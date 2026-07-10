class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  void showDetails() {
    print('\nชื่อหนังสือ : $title');
    print('ผู้เขียน : $author');
    print('ราคา : $price');
    
  }
}

void main() {
  Book b1 = Book('ใบบัว ใบบก', 'สำนักงานคณะกรรมการการศึกษาขั้นพื้นฐาน', 275);
  Book b2 = Book('ก้านกล้วย', 'คุณอมราพร แผ่นดินทอง', 299);

  b1.showDetails();
  print('--------------------');
  b2.showDetails();
  print('--------------------');
}