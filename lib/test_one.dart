//When the null safety opt is off
//You cannot do this.
//This gives you errors belows:
//The non-nullable local variable 'name' must be assigned before it can be used.
//A value of type 'Null' can't be assigned to a variable of type 'int'.
int number = 4;
void main() {
  //TEST_NO_1
  String name;
  int age = null;
  print(name);
  print(age);

}

