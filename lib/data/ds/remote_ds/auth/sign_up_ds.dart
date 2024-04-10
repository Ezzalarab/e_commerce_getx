import '../../../../app/exports.dart';

class SignUpDS {
  Crud crud;
  SignUpDS(this.crud);
  Future signUp({
    required String name,
    required String email,
    required String phone,
    required String password,
  }) async {
    var response = await crud.postData(
      AppLinks.signUpLink,
      {
        "name": name,
        "email": email,
        "phone": phone,
        "password": password,
      },
    );
    return response.fold((l) => l, (r) => r);
  }
}
