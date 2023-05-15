class Student {
  String firstName;
  String lastName;
  String group;
  double averageMark;

  Student(this.firstName, this.lastName, this.group, this.averageMark);

  int getScholarship() {
    if (averageMark == 5) {
      return 20000;
    } else {
      return 0;
    }
  }
}

class Aspirant extends Student {
  String scientificWork;

  Aspirant(String firstName, String lastName, String group, double averageMark,
      this.scientificWork)
      : super(firstName, lastName, group, averageMark);

  int getScholarship() {
    if (averageMark == 5) {
      return 40000;
    } else {
      return 18000;
    }
  }
}

void main() {
  var student = Student('Esen', 'Amab', 'группа A', 4.5);
  print(' Стипендия: ${student.getScholarship()}');

  var aspirant = Aspirant('Тимур', 'Елена', 'группа B', 5.0, 'научная работа');
  print(' Аспирант: ${aspirant.getScholarship()}');
}
