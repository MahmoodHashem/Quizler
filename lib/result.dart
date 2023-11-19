

class Result{

  int? _correctNumbers;
  int? _wrongNumbers;


  void setCorrectCount(int c){
    _correctNumbers = c;
  }

  void setWrongCount(int w){
    _wrongNumbers = w;
  }

  int getCorrectCount(){
    return _correctNumbers!;
  }
  int getWrongCount(){
    return _wrongNumbers!;
  }

}