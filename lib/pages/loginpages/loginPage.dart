import 'package:attendence_management_system/pages/attendencepages/attendencedropdown1.dart';
import 'package:attendence_management_system/pages/bottomNavBar.dart';
import 'package:attendence_management_system/pages/loginpages/forgetpass.dart';
import 'package:attendence_management_system/pages/loginpages/signupPage.dart';
import 'package:flutter/material.dart';
import 'package:geocode/geocode.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;

  get child => null;
  @override
  void initState() {
    showAlert(context);
    super.initState();
  }

  Future showAlert(BuildContext context) async {
    await Future.delayed(Duration(seconds: 3));

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(
            'Selamat Datang ',
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            FlatButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  // height: 250,
                  // width: 300,
                  child: Image.asset(
                      /*'assets/images/a2e00219-0473-458c-a589-ace1758f609c.png'*/
                      'assets/LogoLoginPage.jpg'),
                ),
                //),
                //),

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(13),
                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                      //border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade50,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            color: Colors.grey.shade400),
                        //Offset: Offset(0, 2),
                      ]),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 10)),
                      const Text(
                        'Login',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 45,
                          color: Color.fromARGB(255, 6, 0, 79),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: 'Username',
                            hintText: 'Enter your Username'),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      TextField(
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'Password',
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            icon: Icon(_isObscure
                                ? Icons.visibility_off_sharp
                                : Icons.visibility_sharp),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 14, bottom: 14)),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => LoginNavScreen()),
                            );
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(15),
                            ),
                            primary: (Color.fromRGBO(6, 0, 79, 1)),
                            fixedSize: Size(300, 60),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, //Center Row contents horizontally,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => ForgetPass()),
                                );
                              },
                              child: Text(
                                'Forgot Password',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    color: Color.fromARGB(130, 6, 0, 79)),
                              )),
                          Text('|'),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => SignupPage()),
                                );
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    color: Color.fromARGB(130, 6, 0, 79)),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
