import 'gettersetterusingprivateusingclassandfunc.dart'; //imported from gettersetterperson class

void main() {
  Person person1 = Person(); //consider Person as datatype(same name as class )
  person1.age = 18;
  print(person1.age);

  person1.setname= 'abbb';
  print(person1.namegetter);

  print(person1.person5);
}
