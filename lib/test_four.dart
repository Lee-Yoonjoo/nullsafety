class Person{

  //With Null Safety, this code causes the error below:
  //Compile Error :  Non-nullable instance field 'age' must be initialized.
  //In this case, it suggests to fix it by adding 'late' modifier. Because it will be assigned later.
  //Developers should use late modifier to tell Compiler that the variable can be assigned later.

  late int age;

  int sum(int age, int num){
    this.age = age;
    int total = age + num;
    return total + age;

  }
}

void main(){
  Person person = Person();
  print (person.sum(100, 50));
}