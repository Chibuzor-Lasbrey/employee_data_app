import 'package:employee_data/landing_page.dart';
import 'package:flutter/material.dart';

class ViewAll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var counter;
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
                ],
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 60,
                  width: double.infinity,
                  child: Text(
                    "All Employees $counter", //implement counter for employees
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  )),
              design(context)
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
    height: 640,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )),
    child: Column(),
  );
}

gridview(BuildContext context) {
  return GridView();
}
