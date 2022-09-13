import 'package:flutter/material.dart';
import 'package:noana/screens/templates/custom_back_button.dart';
import 'package:noana/screens/templates/default_drawer.dart';

class Nearest extends StatefulWidget {
  const Nearest({Key? key}) : super(key: key);
  _NearestState createState() => _NearestState();
}

class _NearestState extends State<Nearest> {
  List<String> _filters = <String>['One', 'Two', 'Three', 'Four'];

  String _filter = "";

  @override
  Widget build(BuildContext context) {
    _filter = _filters.first;
    return Scaffold(
      appBar: AppBar(
        title: Text('Les plus proches'),
        leading: const CustomBackButton(),
        automaticallyImplyLeading: true,
      ),
      endDrawer: const DefaultDrawer(),
      body: Column(
        children: [
          Row(
            children: [
              DropdownButton(
                hint: Text("Filtrer"),
                // value: _filter,
                icon: const Icon(Icons.filter_list),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    _filter = value!;
                  });
                },
                items: _filters.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
          ListView(
            children: [],
            shrinkWrap: true,
          ),
        ],
      ),
    );
  }
}
