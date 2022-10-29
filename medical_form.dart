import 'package:flutter/material.dart';
import 'package:med_app/home_screen.dart';

class MedForm extends StatelessWidget {
  const MedForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/bgImg.webp'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              padding: EdgeInsetsDirectional.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Hello,',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Sahil Gupta',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 25),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "How Are You Feeling?",
                        labelStyle: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0,
                            color: Colors.grey[1000])),
                  ),
                  SizedBox(height: 25),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "What disease you Have?",
                        labelStyle: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0,
                            color: Colors.grey[1000])),
                  ),
                  SizedBox(height: 25),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Have you Taken Any Medicine Before?",
                        labelStyle: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0,
                            color: Colors.grey[1000])),
                  ),
                  SizedBox(height: 70),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          'Submit',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      height: 45,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
