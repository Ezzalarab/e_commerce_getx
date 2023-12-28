class OnBoarding {
  final String title;
  final String image;
  final String body;

  OnBoarding({
    required this.title,
    required this.image,
    required this.body,
  });

  OnBoarding copyWith({
    String? title,
    String? image,
    String? body,
  }) {
    return OnBoarding(
      title: title ?? this.title,
      image: image ?? this.image,
      body: body ?? this.body,
    );
  }
}
