import 'package:flutter/material.dart';
import 'package:noana/screens/templates/custom_back_button.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        leading: const CustomBackButton(),
        automaticallyImplyLeading: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_sharp),
            onPressed: () {
              // Navigator.pop(context);
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    "Bonjour John",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.end,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    "Contact",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Téléphone",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("+261 32 26 331 80"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Adresse",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("Lot II P 154 K Avaradoha\nAntananarivo, 101"),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    "Paiement",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Nom",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("John Fields"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Carte bancaire",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("1234 1234 1234 1234"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Expiration",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("02/02"),
                      Text(
                        "CCV",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("123"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
