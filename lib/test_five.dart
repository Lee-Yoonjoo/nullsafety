void main(){
  int x = 50;
  int? y;
  if(x>0){
    y=x;
  }

  //Without ! (bang) right after y , it will cause the error below.
  // Error: A value of type 'int?' can't be assigned to a variable of type 'int' because 'int?' is nullable and 'int' isn't.
  // This means that nullable value cannot be assigned to non-nullable.
  //Only if you can be sure that nullable value will have non-nullable variable, you can add ! to nullable variable.


  int value = y!;
  print (value);
}