class Task {
  final String id;
  final String title;
  bool isDone;

  Task({
    required this.id,
    required this.title,
    required this.isDone,
  });

  void isCompleted() {
    isDone = !isDone;
  }
}
