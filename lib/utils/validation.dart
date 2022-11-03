class Validation {
  /// Return true if [password] is consists of alphabet and number,
  /// and is more then 6 characters long
  static bool password(String password) =>
      password.length >= 6 &&
      password.contains(RegExp(r'[a-zA-Z]')) &&
      password.contains(RegExp(r'[0-9]'));

  /// Return false if [email] is not a valid email
  static bool email(String email) => RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(email);
}
