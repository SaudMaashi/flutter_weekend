import 'package:flutter/material.dart';
import 'package:flutter_weekend/models/to_do.dart';
import 'package:intl/intl.dart';

class ToDoListView extends StatefulWidget {
  const ToDoListView({super.key, required this.list});
  final List<ToDo> list;

  @override
  State<ToDoListView> createState() => _ToDoListViewState();
}

class _ToDoListViewState extends State<ToDoListView> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return ListView.builder(
      itemCount: widget.list.length,
      itemBuilder: ((context, index) {
        return ListTile(
          leading: widget.list[index].leading,
          title: widget.list[index].title,
          subtitle: Text(
            widget.list[index].date == null
                ? "Not selected"
                : DateFormat.yMd().format(widget.list[index].date!),
          ),
          trailing: Checkbox(
            value: widget.list[index].isDone,
            onChanged: (value) {
              setState(() {
                widget.list[index].isDone = value!;
              });
            },
          ),
        );
      }),
    );
  }
}
