class Onboarding {
  final String title;
  final String content;
  final String image;
  Onboarding({
    required this.title,
    required this.content,
    required this.image,
  });
}

class Countries {
  final String name;
  final bool isActive;

  Countries({required this.name, required this.isActive});
}
