import 'package:employee_data/landing_page.dart';
import 'package:employee_data/sign_up.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

TextEditingController _email = TextEditingController();
TextEditingController _password = TextEditingController();

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 200),
            Text(
              "Welcome",
              style: TextStyle(fontSize: 70, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 100),
            TextFormField(
              controller: _email,
              decoration: InputDecoration(
                labelText: "Email",
              ),
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _password,
              decoration: InputDecoration(labelText: "Password"),
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password?",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            SizedBox(height: 30),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(40)),
              height: 50,
              width: 370,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LandingPage()));
                  },
                  child: Text("LOGIN",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400))),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                    text: "Don't have an account?  ",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                    children: <TextSpan>[
                      TextSpan(
                          text: "Sign Up",
                          style: TextStyle(color: Colors.green, fontSize: 14),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("rapum");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()));
                            }),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
