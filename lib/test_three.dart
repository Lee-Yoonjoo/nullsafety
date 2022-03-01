//TEST_NO_3
void main(){
  Person person = Person();

  // Without null safety, I have written this code below a lot to check null. But in Flutter, with null safety, you do not need the whole if statement.
  // With null safety, warning sign(or info) says 'The operand can't be null, so the condition is always false.'
  // It suggests you to "Try removing the condition, an enclosing condition, or the whole conditional statement" as a Quick Fix

  if(person.name == null){
    print('need a name');
  }else{

    print(person.nameChange(person.name));
  }
}
class Person{

  String? name;
  //Compile Error : Non-nullable instance field 'name' must be initialized.
  //Try adding an initializer expression, or a generative constructor that initializes it, or mark it 'late' as a Quick Fix.
  //With null safety, it suggests to "Add 'late' modifier"

  //By adding right after variable Type, it tells to Compiler that the variable can be 'null'. And Compile error is gone.
  //But we use String name parameter on the method, so The argument type 'String?' can't be assigned to the parameter type 'String'. The Parameter should be nullable, too.
  //Then... now 'toUpperCase()' method causes compile error 'The method 'toUpperCase' can't be unconditionally invoked because the receiver can be 'null'.'
  //It suggests two options to add null check statement, or add ? like name?.toUpperCase();


  String nameChange(String? name) {
    this.name = name;

    if(name==null){
      return 'need a name';
    }else{

      return name.toUpperCase();
    }
  }
}

//This code will cause compile error even without Null Safety. Like below.
// "Uncaught TypeError: Cannot read property 'toUpperCase$0' of nullError : TypeError: Cannot read property 'toUpperCase$0' of null.
// When there are so many variables, it is so hard to find which variable is not assigned.
