class Worker {
  String? name;
  String? serName;
  double? rat;
  int? days;

  Worker(this.name, this.serName, this.rat, this.days);

  int gerSalary() {
    double days1 = days!.toDouble();
    double res = rat! * days1;
    print(res.round());
    return res.round();
  }
}

class MyString {
  String? name;

  MyString(this.name);

  String revers() {
    String res = name!.split('').reversed.join();
    print(res);
    return res;
  }

  String ucFirst() {
    List res1 = name!.split('');
    String res2 = res1[0];
    res1[0] = res2.toUpperCase();
    String res3 = res1.join();
    print(res3);
    return res3;
  }

  String ucWords() {
    List<String> perevodNaList = name!.split(' ');
    List<String> resault = [];
    for (int i = 0; i < perevodNaList.length; i++) {
      String slovo = perevodNaList[i];
      List slovoList = slovo.split('');
      String bukva = slovoList[0];
      slovoList[0] = bukva.toUpperCase();
      resault.add(slovoList.join());
    }
    String sobiraem = resault.join(' ');
    print(sobiraem);
    return sobiraem;
  }
}

class Validator {
  String loginName;
  Validator(this.loginName);

  bool isEmail() {
    print(RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(loginName));
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(loginName);
  }

  // bool isEmailNotRight() {
  //   List<String> emailList = loginName.split('');
  //   List<bool> resBool = [];
  //   String res = '';

  //   for (int i = 0; i < emailList.length; i++) {
  //     if (emailList[i] == '+' ||
  //         emailList[i] == '!' ||
  //         emailList[i] == '#' ||
  //         emailList[i] == '\$' ||
  //         emailList[i] == '%' ||
  //         emailList[i] == '^' ||
  //         emailList[i] == '&' ||
  //         emailList[i] == '*' ||
  //         emailList[i] == '(' ||
  //         emailList[i] == ')' ||
  //         emailList[i] == '{' ||
  //         emailList[i] == '}' ||
  //         emailList[i] == '<' ||
  //         emailList[i] == '>' ||
  //         emailList[i] == '?' ||
  //         emailList[i] == ':' ||
  //         emailList[i] == ';' ||
  //         emailList[i] == '~') {
  //       resBool.add(false);
  //       break;
  //     } else if (emailList[i] == '@') {
  //       res += '@';
  //     }
  //   }
  //   if (res == '@') {
  //     resBool.add(true);
  //   } else {
  //     resBool.add(false);
  //   }
  //   print(resBool[0] == true);
  //   return resBool[0] == true;
  // }

}
