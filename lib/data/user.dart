class User {
  final String firstname;
  final String lastname;

  User(this.firstname, this.lastname);

  factory User.initial() {
    return User('', '');
  }
}
