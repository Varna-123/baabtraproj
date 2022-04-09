void main() {
  var sample1 = Sample('anu'); //parameterised constr----
  print(sample1.name);

  var sample2 = Sample('anna');
  print(sample2.name);
}

class Sample {
  String? name;

// parametarized constructor

  Sample(String name) {
    print("student name is : $name");
    this.name = name;
  }
  
}
