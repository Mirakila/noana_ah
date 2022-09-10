import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Réinitialiser mot de passe"),
        automaticallyImplyLeading: true,
      ),
      body: Container(
        // color: Colors.black87,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: const Text(
                  "Entrez votre numéro de téléphone pour réinitialiser votre mot de passe.",
                  style: TextStyle(
                      // color: Colors.white,
                      )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Form(
                key: _formKey,
                child: Container(
                  height: 160,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            gapPadding: 8,
                            // borderSide: BorderSide(
                            //   color: Colors.white,
                            // ),
                          ),
                          labelText: "Téléphone",
                          prefix: const Text("+261"),
                          // contentPadding:
                          //     const EdgeInsets.symmetric(horizontal: 4.0),
                        ),
                        // style: TextStyle(
                        //   color: Colors.white,
                        // ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => {},
              child: const Text("OK"),
              style: ButtonStyle(
                // foregroundColor:
                //     MaterialStateProperty.all<Color>(Colors.amber),
                // backgroundColor:
                //     MaterialStateProperty.all<Color>(Colors.black),
                fixedSize: MaterialStateProperty.all<Size>(Size(300, 40)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
