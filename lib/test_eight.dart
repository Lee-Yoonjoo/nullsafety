//late and lazy
//Without late in front of int age, result will be
// calculate age 30
//This means age variable is performed when the class object is created.

//With late in front of int age, result will be
// age calculate 30
//with late keyword, that variable will be performed when it is called/referred for the first time.
class Person{
  late int age = calculation();
  void printAge(){
    print('age');
  }
}

int calculation(){
  print('Calculate');
  return 30;
}

void main(){
  Person person = Person(); // Person instance is created.
  person.printAge(); // method is called.
  print(person.age); // variable age is referred for the first time
}