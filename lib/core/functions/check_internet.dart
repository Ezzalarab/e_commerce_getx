import 'dart:developer';
import 'dart:io';

Future<bool> checkInternet() async {
  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    }
    return false;
  } on SocketException catch (e) {
    log(e.toString());
    return false;
  } catch (e) {
    log(e.toString());
    return false;
  }
}
