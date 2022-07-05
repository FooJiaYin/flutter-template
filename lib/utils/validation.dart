class Validation {
  // 密碼需超過六碼，且包含英文數字
  static bool password(String password) =>
      password.length >= 6 &&
      password.contains(RegExp(r'[a-zA-Z]')) &&
      password.contains(RegExp(r'[0-9]'));

  static bool email(String email) => RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(email);
}
