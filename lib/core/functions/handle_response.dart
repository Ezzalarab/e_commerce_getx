import 'package:e_commerce_getx/core/class/request_status.dart';

RequestStatus handleResponse(jsonResponse) {
  if (jsonResponse is RequestStatus) {
    return jsonResponse;
  } else {
    if (jsonResponse['status'] == 'success') {
      return RequestStatus.success;
    } else {
      return RequestStatus.unknown;
    }
  }
}
