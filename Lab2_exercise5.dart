void Grade(int score) {
  print(" ");
  print("Score: $score");
  if (score >= 90) {
    print("Grade: A");
  } else if (score >= 80) {
    print("Grade: B");
  } else if (score >= 70) {
    print("Grade: C");
  } else if (score >= 60) {
    print("Grade: D");
  } else {
    print("Grade: F");
  }
  print("-" * 15);
}

void main() {
    Grade(85);
    Grade(72);
    Grade(50);
    Grade(40);

  print("Numbers 1 to 10 :"); //for loop พิมพ์ 1 ถึง 10
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
  print("-" * 15);


  var fruits = ['Apple', 'Banana', 'cherry'];
  print("Fruits List :"); //for loop พิมพ์ผลไม้ใน list
  for (var fruit in fruits) {
    print("- $fruit");
  }
  print("-" * 15);
}


