import '../../../../app/exports.dart';

class VerifySignUpDS {
  Crud crud;
  VerifySignUpDS(this.crud);
  Future verify({
    required String email,
    required String verifyCode,
  }) async {
    Map<String, dynamic> data = {
      "email": email,
      "verify_code": verifyCode,
    };
    print(data.toString());
    var response = await crud.postData(
      AppLinks.verifyLink,
      data,
    );
    return response.fold((l) => l, (r) => r);
  }
}
