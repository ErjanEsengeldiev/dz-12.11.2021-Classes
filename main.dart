import 'dart:io';
import 'classes.dart';

void main() {
  Worker erjan = Worker('Erjan', 'Esengeldiev', 1000, 5);
  erjan.gerSalary();

  MyString a = MyString('fsdfasd fasdfasd fasdfasd');
  a.revers();

  MyString b = MyString('erjan');
  b.ucFirst();

  MyString c = MyString('erjan esengeldiev');
  c.ucWords();

  Validator email = Validator('Erjanesengeldiev@gmail.com');
  email.isEmail();
}
