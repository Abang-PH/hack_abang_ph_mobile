import 'package:flutter/material.dart';
import 'package:hack_abang_ph_mobile/areas/home_screen.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreen extends StatefulWidget {
  static final routeName = "/login_screen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _conUserName = TextEditingController();
  TextEditingController _conPassword = TextEditingController();
  bool _showPassword = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Card(
        elevation: 3.0,
        margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 70.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: 150.0,
                  height: 150.0,
                  child: Image.asset("assets/images/abang_logo1.png")),
              _TextInput(
                placeholder: "Username",
                prefixIcon: Icon(Icons.person),
              ),
              SizedBox(
                height: 20.0,
              ),
              _TextInput(
                placeholder: "Password",
                prefixIcon: Icon(Icons.lock),
              ),
              SizedBox(height: 15.0),
              _ButtonLogin(
                function: () {
                  Navigator.of(context).pushNamed(HomeScreen.routeName);
                },
              ),
              SizedBox(height: 5.0),
              Container(
                child: FlatButton(
                  onPressed: () {
                    // Navigator.of(context).pushNamed(RegisterScreen.routeName);
                  },
                  child: Text("Register", style: TextStyle(color: Colors.blue)),
                ),
              ),
              Text("- OR -"),
              SizedBox(height: 10.0),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: SignInButton(
                      Buttons.Google,
                      text: "Google",
                      onPressed: () {
                        //_showButtonPressDialog(context, 'Google');
                      },
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    flex: 1,
                    child: SignInButton(
                      Buttons.Facebook,
                      text: "Facebook",
                      onPressed: () {
                        //_showButtonPressDialog(context, 'Google');
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}

class _ButtonLogin extends StatelessWidget {
  final Function function;

  _ButtonLogin({required this.function});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(color: Theme.of(context).primaryColor),
        ),
        onPressed: () => function(),
        padding: EdgeInsets.all(10.0),
        color: Theme.of(context).primaryColor,
        child: Text(
          "Login",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            // fontStyle: "monserrat_regular",
          ),
        ),
      ),
    );
  }
}

class _TextInput extends StatelessWidget {
  final String placeholder;
  final Widget prefixIcon;

  _TextInput({required this.placeholder, required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: Colors.grey,
        style: TextStyle(
          fontSize: 13.0,
          color: Colors.grey,
        ),
        decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
            filled: true,
            fillColor: Colors.white,
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(
                    color: Colors.grey[400] ?? Colors.grey,
                    width: 1.0,
                    style: BorderStyle.solid)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(
                    color: Colors.grey[400] ?? Colors.grey,
                    width: 1.0,
                    style: BorderStyle.solid)),
            hintText: placeholder));
  }
}
