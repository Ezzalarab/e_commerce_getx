// with either crud operations

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:e_commerce_getx/core/class/request_status.dart';
import 'package:e_commerce_getx/core/functions/check_internet.dart';

class Crud {
  Future<Either<RequestStatus, Map<String, dynamic>>> postData(
    String url,
    Map<String, dynamic> data,
  ) async {
    if (await checkInternet()) {
      var response = await http.post(
        Uri.parse(url),
        body: data,
      );
      int statusCode = response.statusCode;

      if (response.statusCode == 200 || response.statusCode == 201) {
        Map<String, dynamic> jsonResponse = json.decode(response.body);
        return Right(jsonResponse);
      } else if (statusCode == 401) {
        return const Left(RequestStatus.noPermission);
      } else if (statusCode == 404) {
        return const Left(RequestStatus.noDataFound);
      } else if (statusCode == 408) {
        return const Left(RequestStatus.timeout);
      } else if (statusCode == 422) {
        return const Left(RequestStatus.unknown);
      } else if (statusCode == 500) {
        return const Left(RequestStatus.serverError);
      } else if (statusCode == 503) {
        return const Left(RequestStatus.noConnection);
      } else {
        return const Left(RequestStatus.failure);
      }
    } else {
      return const Left(RequestStatus.noInternet);
    }
  }
}
