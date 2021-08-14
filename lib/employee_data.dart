import 'package:employee_data/landing_page.dart';
import 'package:flutter/material.dart';

class EmployeeData extends StatefulWidget {
  @override
  _EmployeeDataState createState() => _EmployeeDataState();
}

class _EmployeeDataState extends State<EmployeeData> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/bg.jpg"),
            fit: BoxFit.cover,
          )),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LandingPage()));
                    },
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    "Employee BioData",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 130,
                  width: double.infinity,
                  child: CircleAvatar(
                    child: Text(
                      "CA",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              design(context),
            ],
          ),
        ),
      ),
    );
  }
}

design(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    height: 560,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )),
    child: Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: "Firstname",
          ),
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Lastname",
          ),
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Gender",
          ),
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Date of birth",
          ),
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Passport photo",
          ),
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Address",
          ),
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Country",
          ),
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: "State",
          ),
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            width: 390,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                onPressed: () {},
                child: Text(
                  "Create Employee",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )))
      ],
    ),
  );
}
