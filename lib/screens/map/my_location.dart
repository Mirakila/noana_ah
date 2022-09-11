import 'package:flutter/material.dart';
import 'package:noana/screens/templates/custom_back_button.dart';
import 'package:noana/screens/templates/default_drawer.dart';

class MyLocation extends StatefulWidget {
  const MyLocation({Key? key}) : super(key: key);
  _MyLocationState createState() => _MyLocationState();
}

class _MyLocationState extends State<MyLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ma localisation'),
        leading: const CustomBackButton(),
        automaticallyImplyLeading: true,
      ),
      endDrawer: const DefaultDrawer(),
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Image(
            image: AssetImage("assets/images/map.jpeg"),
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 32.0,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(8.0),
              height: 56.0,
              width: 300.0,
              child: ListTile(
                leading: Icon(
                  Icons.location_on,
                ),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: 'ex: Analakely, Antananarivo',
                    hintStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 32.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/nearest');
              },
              child: Text("Les plus proches"),
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(Size(300, 40)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
