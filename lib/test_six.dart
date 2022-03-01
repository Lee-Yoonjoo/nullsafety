void main(){
  print(add(a: null, b: 5));
}

//{int a, int b} these are named parameters(arguments). With named parameters, the values can given or not. Optional.
//Dart supports named parameters. Named means that when you call a function, you attach the argument to a label.
//Named parameters are written a bit differently.
//When defining the function, wrap any named parameters in curly braces ({ }). This line defines a function with named parameters:
//With named parameters, but without null-safety, even though you give any parameters values on add() method, there will be no error.


int add({required int? a, required int b}){
  // Compile errors will be like below:
  // The parameter 'a' can't have a value of 'null' because of its type, but the implicit default value is 'null'.
  //The parameter 'b' can't have a value of 'null' because of its type, but the implicit default value is 'null'.
  // To fix this error
  // 1. add required keyword in front of variable type. That means you make named parameters NOT optional.
  // (Then why do we use 'named argument even with null safety?')
  // 2. action 1 will cause compile error like 'The argument type 'Null' can't be assigned to the parameter type 'int'.'
  // 3. Make the value with null nullable.
  // 4. Then action 3 will cause compile error like 'The operator '+' can't be unconditionally invoked because the receiver can be 'null'.'
  // 5. To fix that error add null checking if statement.

  if(a==null){
    return b;
  }
    int sum = a+b;
    return sum;
}

//Without null safety, named argument.
