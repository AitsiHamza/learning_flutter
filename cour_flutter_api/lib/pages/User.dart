class User {
  String _name;
  String _gender;
  String _email;
  String _phone;
  String _picture;


  User(this._gender,this._name, this._email, this._phone,this._picture);

  String get picture => _picture;

  String get gender => _gender;

  set gender(String value) {
    _gender = value;
  }

  set picture(String value) {
    _picture = value;
  }

  String get phone => _phone;

  set phone(String value) {
    _phone = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

}
