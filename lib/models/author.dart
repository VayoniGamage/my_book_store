class Author {
  final String name;
  final String image;

  Author({required this.name, String? image})
      : image = image ?? "assets/default_author.jpg"; // Default image if null
}
