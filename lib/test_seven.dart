int getLength(String? str) {
  // Try throwing an exception here if `str` is null.
  try{
    return str!.length;
  }catch(e){
    print(e);
    return 0;
  }

}

void main() {
  print(getLength('Hallo'));
}