import 'package:flutter/material.dart';

class SignUppage extends StatefulWidget {
  const SignUppage({Key? key}) : super(key: key);

  @override
  _SignUppageState createState() => _SignUppageState();
}

class _SignUppageState extends State<SignUppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Signup Page"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 5,
                  ),
                  Container(
                    child: Text(
                      "Signup Here!",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Container(
                      child: TextFormField(
                        decoration: InputDecoration(labelText: "Email Address"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Container(
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(labelText: "Password"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Container(
                        child: MaterialButton(
                          child: Text(
                            "Signup",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {},
                          height: 40.0,
                          minWidth: 300.0,
                          color: Colors.orange,
                        )),
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

