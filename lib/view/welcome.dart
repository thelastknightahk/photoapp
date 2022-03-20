import 'package:flutter/material.dart';
import 'package:getittest/domain/models/person.dart';
import 'package:getittest/main.dart';
import 'package:getittest/utils/colors.dart';
import 'package:getittest/utils/dimen.dart';
import 'package:getittest/view/signin.dart';
import 'package:getittest/view/signup.dart';
import 'package:getittest/widget/auth_button.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  late double fullWidth, fullHeight;

  @override
  Widget build(BuildContext context) {
    fullHeight = MediaQuery.of(context).size.height;
    fullWidth = MediaQuery.of(context).size.width;
    var authWidget = [welcomeMainWidget(context), SignInPage(), SignUpPage()];
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/wallbackground.jpeg'),
                  fit: BoxFit.cover)),
          child: welcomeMainWidget(context)),
    );
  }

  Widget welcomeMainWidget(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Text(
            'Hello ! Guys ',
            style: GoogleFonts.caveat(
              textStyle: TextStyle(
                  color: mainColor,
                  letterSpacing: .5,
                  fontSize: REGULAR_FONT5x),
            ),
          ),
        ),
        Positioned(
            bottom: 200.0,
            left: 20.0,
            right: 20.0,
            child: InkWell(
                onTap: () {
                  // Navigator.pushNamed(context, '/signIn');
                },
                child: authButton(context, 'Sign In'))),
        Positioned(
            bottom: 130.0,
            left: 20.0,
            right: 20.0,
            child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/signUp');
                },
                child: authButton(context, 'Sign Up'))),
      ],
    );
  }

  Widget authButton(BuildContext context, String typeAuth) {
    return Container(
      margin: const EdgeInsets.all(MARGIN_1X),
      width: fullWidth / 1.5,
      height: CARD_HEIGHT,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(CIRCULAR_NORMAL),
        color: typeAuth.compareTo('Sign In') == 0
            ? Color.fromARGB(255, 50, 62, 68)
            : Colors.lightBlueAccent,
      ),
      child: Center(
          child: Text(
        '$typeAuth',
        style: TextStyle(color: mainColor, fontSize: REGULAR_FONT),
      )),
    );
  }

  saveData() async {
    // List<Person> personalList = [];
    // personalList.add(Person(email: "aung@gmail.com", password: "123456"));

    // box.put('UserList', personalList);
  }

  getUserData() async {}
}
