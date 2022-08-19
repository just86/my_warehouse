import 'package:my_warehouse/widgets/db/model.dart';

class TodoItem extends Model {

  static String table = 'todo_items';

  int id;
  String task;
  bool complete;

  TodoItem({ required this.id, required this.task, required this.complete });

  Map<String, dynamic> toMap() {

    Map<String, dynamic> map = {
      'task': task,
      'complete': complete
    };

    if (id != null) { map['id'] = id; }
    return map;
  }

  static TodoItem fromMap(Map<String, dynamic> map) {

    return TodoItem(
        id: map['id'],
        task: map['task'],
        complete: map['complete'] == 1
    );
  }
}