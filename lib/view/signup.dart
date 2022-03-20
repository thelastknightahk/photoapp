import 'package:flutter/material.dart';
import 'package:getittest/view/signin.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/dimen.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width;
    double fullHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
          padding: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/wallbackground.jpeg'),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    fillColor: mainColor,
                    filled: true,
                    labelStyle: TextStyle(color: purpleColor),
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 98, 107, 230)),
                    ),
                    focusedBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 91, 100, 228)),
                    ),
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 91, 100, 228),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    fillColor: mainColor,
                    filled: true,
                    labelStyle: TextStyle(color: purpleColor),
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 98, 107, 230)),
                    ),
                    focusedBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 91, 100, 228)),
                    ),
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.lock,
                      color: Color.fromARGB(255, 91, 100, 228),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              Container(
                width: 100.0,
                height: 45.0,
                child: Center(
                    child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: REGULAR_FONT,
                      color: purpleColor,
                      fontWeight: FontWeight.w600),
                )),
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(4.0)),
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(_createRoute())
                      .then((value) => Navigator.pop(context));
                },
                child: Text(
                  "Already have an account? SignIn",
                  style: GoogleFonts.caveat(
                    textStyle: TextStyle(
                        color: mainColor,
                        letterSpacing: .5,
                        fontSize: REGULAR_FONT2x),
                  ),
                ),
              )
            ],
          )),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const SignInPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }
}