
enum FomWho{
  me,
  other
}

class Message{
  final String text;
  final String? imageUrl;
  final FomWho fromWho;

  Message({
    required this.text,
    this.imageUrl,
    required this.fromWho
  });
}
