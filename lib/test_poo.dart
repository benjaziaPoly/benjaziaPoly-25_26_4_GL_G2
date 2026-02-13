class User {
  //attributs +getter/setters + constructeur + methode
  int _code = 0;
  String _login = "";
  String _password = "";

  int get code => _code;
  String get login => _login;
  String get password => _password;

  set code(int c) => _code = c;
  set login(String c) => _login = c;
  set password(String c) => _password = c;
  //Constructeur
  User() {
    _code = 0;
    _login = "";
    _password = "";
  }

  User.avecParam(int code, String login, String password) {
    _code = code;
    _login = login;
    _password = password;
  }

  User.avecParamOpt(int code, String login, String password);

  User.avecParamNomme({
    int code = 0,
    required String login,
    required String password,
  }) {
    _code = code;
    _login = login;
    _password = password;
  }

  @override
  String toString() {
    return "User:Code=$_code,Login=$_login,Password=$_password";
  }
}

//prog principal
void main() {
  var u = User();
  var u1 = User.avecParam(100, "aa", "aa");
  var u2 = User.avecParamOpt(200, "bb", "bb");
  var u3 = User.avecParamNomme(login: "aa", password: "aa");
  print(u);
  print(u1);
  print(u2);
  print(u3);
}
// input type=text
// Input(type:Text(x:))

// X(y:Y())