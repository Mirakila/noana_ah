import 'package:flutter/material.dart';
import 'package:noana/screens/templates/custom_back_button.dart';
import 'package:noana/screens/templates/default_drawer.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

class Nearest extends StatefulWidget {
  const Nearest({Key? key}) : super(key: key);
  _NearestState createState() => _NearestState();
}

class _NearestState extends State<Nearest> {
  List<String> _filters = <String>['One', 'Two', 'Three', 'Four'];

  TextEditingController _searchController = TextEditingController();

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton(
                  hint: Text("Filtrer "),
                  icon: const Icon(Icons.filter_list, size: 16.0),
                  onChanged: (String? value) {
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
                AnimSearchBar(
                  width: 250,
                  textController: _searchController,
                  rtl: true,
                  helpText: "Rechercher",
                  onSuffixTap: () {
                    setState(() {
                      _searchController.clear();
                    });
                  },
                ),
              ],
            ),
            ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  leading: Image(
                    image: AssetImage("assets/images/burger.jpg"),
                    fit: BoxFit.scaleDown,
                  ),
                  title: const Text('Cheese Burger'),
                  subtitle: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'La Gastronomie Pizza\n',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                            text: 'Analakely, Antananarivo',
                            style: TextStyle(fontStyle: FontStyle.italic)),
                      ],
                    ),
                  ),
                  trailing: Icon(Icons.favorite_border),
                  onTap: () {
                    // Navigator.pop(context);
                    // Navigator.pushNamed(context, '/profile');
                  },
                ),
                ListTile(
                  leading: Image(
                    image: AssetImage("assets/images/burger.jpg"),
                    fit: BoxFit.scaleDown,
                  ),
                  title: const Text('Cheese Burger'),
                  subtitle: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'La Gastronomie Pizza\n',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                            text: 'Analakely, Antananarivo',
                            style: TextStyle(fontStyle: FontStyle.italic)),
                      ],
                    ),
                  ),
                  trailing: Icon(Icons.favorite_border),
                  onTap: () {
                    // Navigator.pop(context);
                    // Navigator.pushNamed(context, '/profile');
                  },
                ),
                ListTile(
                  leading: Image(
                    image: AssetImage("assets/images/burger.jpg"),
                    fit: BoxFit.scaleDown,
                  ),
                  title: const Text('Cheese Burger'),
                  subtitle: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'La Gastronomie Pizza\n',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                            text: 'Analakely, Antananarivo',
                            style: TextStyle(fontStyle: FontStyle.italic)),
                      ],
                    ),
                  ),
                  trailing: Icon(Icons.favorite_border),
                  onTap: () {
                    // Navigator.pop(context);
                    // Navigator.pushNamed(context, '/profile');
                  },
                ),
              ],
              shrinkWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}
