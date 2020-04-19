import 'package:flutter/material.dart';
import 'package:slender/src/screens/homepage/dashboard_screen.dart';
import '../../../utils/styles.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisible = true;
  bool showLoading = false;
  var _email;
  var _password;
  var _errorMessage;
  
  _loginHandler() {

    //Later will add login logic with Firebase Authentication
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => DashboardScreen()));
  
  }

  @override
  Widget build(BuildContext context) {
    print("Login Screen");
    return Scaffold(
      backgroundColor: kSlenderLightGrey,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 120.0,
            child: Image.asset(
              'assets/images/slender-no-motto-logo.png',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          _loginFormWidget(),
          SizedBox(height: 40.0),
          _loginButtonsWidget()
        ],
      )),
    );
  }

  Widget _loginFormWidget() {
    return (Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: TextField(
            obscureText: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3.0),
              ),
            ),
            onChanged: (value) => _email = value,
          ),
        ),
        SizedBox(height: 25.0),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: TextField(
            obscureText: passwordVisible,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Password",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(3.0)),
              suffixIcon: IconButton(
                icon: Icon(
                  passwordVisible ? Icons.visibility_off : Icons.visibility,
                  color: Colors.black,
                ),
                onPressed: () {
                  // Update the state i.e. toogle the state of passwordVisible variable
                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                },
              ),
            ),
            onChanged: (value) => _password = value,
          ),
        ),
      ],
    ));
  }

  Widget _loginButtonsWidget() {
    return (
      Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: SizedBox(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0)),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  onPressed: () {
                    _loginHandler();
                  },
                  color: kSlenderPurple,
                  //specify background color for the button here
                  colorBrightness: Brightness.dark,
                  //specify the color brightness here, either `Brightness.dark` for darl and `Brightness.light` for light
                  disabledColor: Colors.grey,
                  // specify color when the button is disabled
                  highlightColor: kSlenderLightPurple,
                  //color when the button is being actively pressed, quickly fills the button and fades out after
                  padding: EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 15.0), // gives padding to the button
                ),
                width: double.infinity),
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: SizedBox(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0)),
                  child: Text(
                    'Register New Account',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  onPressed: () {
                    print("Register button clicked");
                  },
                  color: kSlenderGrey,
                  //specify background color for the button here
                  colorBrightness: Brightness.dark,
                  //specify the color brightness here, either `Brightness.dark` for darl and `Brightness.light` for light
                  disabledColor: Colors.grey,
                  // specify color when the button is disabled
                  highlightColor: kSlenderLightPurple,
                  //color when the button is being actively pressed, quickly fills the button and fades out after
                  padding: EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 15.0), // gives padding to the button
                ),
                width: double.infinity),
          ),
        ],
      )
    );
  }

}
