import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String loginName, loginPass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Form(
              child: Wrap(
                  children: <Widget> [
                    TextFormField(
                      onChanged: (text) {
                        loginName = text;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                      ),
                    ),
                    TextFormField(
                      onChanged: (text) {
                        loginPass = text;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) {
                          return RegisterPage();
                        }));
                      },
                        child: Text(
                            "Not registered yet? Register here."
                        )
                    ),
                    ElevatedButton(
                        onPressed: () {

                        },
                        child: Text(
                            "Login"
                        )
                    ),
                  ]
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String registerEmail, registerName, registerPass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Form(
              child: Wrap(
                children: <Widget> [
                  TextFormField(
                    onChanged: (text) {
                      registerEmail = text;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                  TextFormField(
                    onChanged: (text) {
                      registerName = text;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                    ),
                  ),
                  TextFormField(
                    onChanged: (text) {
                      registerPass = text;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {

                      },
                      child: Text(
                          "Register"
                      )
                    ),
                  ]
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
