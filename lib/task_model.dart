class TaskModel {
  TaskModel(
      {this.id = '',
      required this.title,
      required this.date,
      this.isDone = false,
      required this.description});
  String id;
  String title;
  String description;
  int date;
  bool isDone;

  TaskModel.fromJson(Map<String, dynamic> json)
      : this(
          title: json['title'],
          date: json['date'],
          description: json['description'],
          isDone: json['isDone'],
          id: json['id'],
        );

  Map<String, dynamic> toJson() {
    return {
      "description": description,
      "title": title,
      "isDone": isDone,
      "date": date,
      "id": id,
    };
  }
}
