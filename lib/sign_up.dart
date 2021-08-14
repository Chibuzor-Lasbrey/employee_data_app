import 'package:employee_data/landing_page.dart';
import 'package:employee_data/sign_in.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

TextEditingController _name = TextEditingController();
TextEditingController _email = TextEditingController();
TextEditingController _password = TextEditingController();

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Text(
                "Hello\nThere...",
                style: TextStyle(fontSize: 70, fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 100),
              TextFormField(
                controller: _name,
                decoration: InputDecoration(
                  labelText: "Name",
                ),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: _email,
                decoration: InputDecoration(
                  labelText: "Email",
                ),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: _password,
                decoration: InputDecoration(
                  labelText: "Password",
                ),
                keyboardType: TextInputType.numberWithOptions(),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 30),
              Container(
                height: 50,
                width: 370,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LandingPage()));
                    },
                    child: Text("REGISTER",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400))),
              ),
              SizedBox(height: 10),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: "Already have an account?  ",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                      children: <TextSpan>[
                        TextSpan(
                            text: "Sign In",
                            style: TextStyle(color: Colors.green, fontSize: 14),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("rapum");
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignIn()));
                              }),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
