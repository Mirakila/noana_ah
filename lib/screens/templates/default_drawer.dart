import 'package:flutter/material.dart';

class DefaultDrawer extends StatelessWidget {
  const DefaultDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.amber,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: AssetImage("assets/logo/noana_ah_amber.png"),
                    height: 175,
                    fit: BoxFit.fitHeight,
                  ),
                  Text(
                    "Bonjour John",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ]),
          ),
          ListTile(
            title: const Text('Profile'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
    );
  }
}
