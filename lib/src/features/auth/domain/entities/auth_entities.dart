// ignore_for_file: public_member_api_docs, sort_constructors_first

class LoginReqBodyEntity {
  final String username;
  final String password;

  LoginReqBodyEntity({
    required this.username,
    required this.password
  });
}

class SignUpReqBodyEntity {
  final String name;
  final String username;
  final String password;
  final List<String> category;
  SignUpReqBodyEntity({
    required this.name,
    required this.username,
    required this.password,
    required this.category,
  });
}

class AuthResBodyEntity {
  final String accessToken;
  final String refreshToken;
  AuthResBodyEntity({
    required this.accessToken,
    required this.refreshToken,
  });
}
