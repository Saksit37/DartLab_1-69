void main() {
  List<String> subjects = ["Math", "Chemical", "Biology"];
  print("Number of subjects : ${subjects.length} subjects");
  print("First name subject is : ${subjects[0]}");
  print("Last name subjects is : ${subjects[2]}");

  subjects.add("History");
  print("Update subject = ${subjects}");

  print(" ");
  print("-" * 60);
  print(" ");

  Map<String, int> studentscores = {"Math": 67, "Chemical": 23, "Biology": 59};

  print("My Math score is = ${studentscores["Math"]}");

  studentscores["History"] = 89;

  print("All scores = ${studentscores}");
  print(" ");

  print("Subjects contain with a");
  for (var i in studentscores.entries) {
    if (i.key.toLowerCase().contains("a")) {
      print("${i.key} : ${i.value}");
    }
  }
  print(" ");
  print("-" * 60);
  print(" ");
}
