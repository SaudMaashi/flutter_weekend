import 'package:flutter/material.dart';
import 'package:flutter_weekend/constants/to_do_list.dart';
import 'package:flutter_weekend/models/to_do.dart';
import 'package:flutter_weekend/widgets/to_do_list_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({super.key});

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  ToDoCategory _selectedCategory = ToDoCategory.food;
  final TextEditingController _textController = TextEditingController();
  DateTime? _selectedDate;
  Icon _selectedIcon = Icon(toDoCategoryIcons[ToDoCategory.food]);
  final List<ToDo> _toDoList = [];

  void _openDatePicker(StateSetter setState) async {
    final now = DateTime.now();
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: now,
      lastDate: DateTime(2024, 1, 1),
    );
    _selectedDate = pickedDate;
    setState(() {});
  }

  void _createToDo() {
    setState(
      () {
        _toDoList.add(
          ToDo(
            leading: _selectedIcon,
            title: Text(_textController.text),
            date: _selectedDate,
            trailing: Checkbox(
              value: true,
              onChanged: (value) {},
            ),
          ),
        );
        Navigator.pop(context);
      },
    );
  }

  void _showButtomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Container(
            padding: const EdgeInsets.all(48),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text(
                    "Adding a to do",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor, fontSize: 24),
                  ),
                ),
                TextFormField(
                  controller: _textController,
                  decoration: const InputDecoration(
                    label: Text("Enter a to do"),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    DropdownButton(
                      value: _selectedCategory,
                      items: ToDoCategory.values
                          .map(
                            (category) => DropdownMenuItem(
                              value: category,
                              child: Row(
                                children: [
                                  Icon(toDoCategoryIcons[category]),
                                  const SizedBox(width: 16),
                                  Text(
                                    category.name.toUpperCase(),
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        if (value == null) return;
                        setState(
                          () {
                            _selectedCategory = value;
                            _selectedIcon =
                                Icon(toDoCategoryIcons[_selectedCategory]);
                          },
                        );
                      },
                    ),
                    TextButton.icon(
                      onPressed: () {
                        _openDatePicker(setState);
                      },
                      icon: const Icon(FontAwesomeIcons.calendar),
                      label: Text(
                        _selectedDate == null
                            ? "Pick a date"
                            : DateFormat.yMd().format(_selectedDate!),
                        style: const TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: _createToDo,
                    child: const Text("Add"),
                  ),
                ),
              ],
            ),
          );
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton.icon(
            onPressed: _showButtomSheet,
            icon: const Icon(Icons.add),
            label: const Text("Add to your to do list"),
          ),
        ],
      ),
      body: ToDoListView(list: _toDoList),
    );
  }
}
