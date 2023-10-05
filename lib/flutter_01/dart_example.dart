
void main(){
  var _index = 0;
  List stringList = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
  ];
  print(stringList.length);
  print(' ==> ${stringList[_index%stringList.length]}');

  print(_index%stringList.length);
}




