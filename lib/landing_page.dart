import 'package:employee_data/employee_data.dart';
import 'package:employee_data/view_all_employees.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:image_picker/image_picker.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    var counter; // set up counter to indicate number of recent employees
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/bg.jpg"),
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              Center(
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: CircleAvatar(
                      //backgroundColor: Colors.green,
                      ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                    "Welcome, Layon", //insert your intended id variable e.g $name
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500)),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                    child: Column(
                      children: [
                        Container(
                          width: 430,
                          height: 3,
                        ),
                        Container(
                          child: Text(
                              "RECENT EMPLOYEES $counter", //implement the counter here
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700)),
                        ),
                        /*Container(
                        child: ListView(),
                      )*/
                      ],
                    )),
              ), //insert your listview model here

              Row(
                children: [
                  Container(
                    height: 50,
                    width: 205,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 3.0, color: Colors.black),
                            backgroundColor: Colors.white),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ViewAll()));
                        },
                        child: Text("View All",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ))),
                  ),
                  Container(
                    height: 50,
                    width: 205,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 3.0, color: Colors.black),
                            backgroundColor: Colors.white),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EmployeeData()));
                        },
                        child: Text("Add Employee",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ))),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
