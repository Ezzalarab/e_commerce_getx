// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AppResponse {
  String status;
  String message;
  dynamic data;
  AppResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  AppResponse copyWith({
    String? status,
    String? message,
    dynamic data,
  }) {
    return AppResponse(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      AppResponseKeys.status: status,
      AppResponseKeys.message: message,
      AppResponseKeys.data: data,
    };
  }

  factory AppResponse.fromMap(Map<String, dynamic> map) {
    return AppResponse(
      status: map[AppResponseKeys.status]?.toString() ?? '',
      message: map[AppResponseKeys.message]?.toString() ?? '',
      data: map[AppResponseKeys.data],
    );
  }

  String toJson() => json.encode(toMap());

  factory AppResponse.fromJson(String source) =>
      AppResponse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'AppResponse(status: $status, message: $message, data: $data)';

  @override
  bool operator ==(covariant AppResponse other) {
    if (identical(this, other)) return true;

    return other.status == status &&
        other.message == message &&
        other.data == data;
  }

  @override
  int get hashCode => status.hashCode ^ message.hashCode ^ data.hashCode;
}

class AppResponseKeys {
  static const String status = 'status';
  static const String message = 'message';
  static const String data = 'data';
}
