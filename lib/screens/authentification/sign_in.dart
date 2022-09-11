import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.amber,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image(
                image: AssetImage("assets/logo/noana_ah_amber.png"),
                height: 250,
                fit: BoxFit.fitHeight,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Form(
                  key: _formKey,
                  child: Container(
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Nom d'utilisateur",
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Mot de passe",
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/forgot_password');
                          },
                          child: const Text("Mot de passe oublié ?"),
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/my_location");
                },
                child: const Text("Se connecter"),
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  fixedSize: MaterialStateProperty.all<Size>(Size(300, 40)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
