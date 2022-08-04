import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:trial1/Screens/login.dart';
import 'package:trial1/constants.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // final TextEditingController ctrEmail = new TextEditingController();
  // final TextEditingController ctrPassword = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: BackButton(color: Colors.black),
      //   backgroundColor: Colors.white,
      // ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: kPrimaryColor),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 80, right: 80, bottom: 50),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 60),
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 60),
                    child: Text(
                      'Create a new account',
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 30,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  TextField(
                    // controller: ctrEmail,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      labelText: 'NAME',
                      labelStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.account_circle_rounded,
                        ),
                      ),
                    ),
                    style: TextStyle(color: kPrimaryColor),
                  ),
                  SizedBox(height: 50),
                  TextField(
                    // controller: ctrEmail,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      labelText: 'EMAIL',
                      labelStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.email,
                        ),
                      ),
                    ),
                    style: TextStyle(color: kPrimaryColor),
                  ),
                  SizedBox(height: 50),
                  TextField(
                    // controller: ctrEmail,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      labelText: 'PHONE',
                      labelStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.phone_iphone_sharp,
                        ),
                      ),
                    ),
                    style: TextStyle(color: kPrimaryColor),
                  ),
                  SizedBox(height: 50),
                  TextField(
                    // controller: ctrEmail,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      labelText: 'PASSWORD',
                      labelStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.lock,
                        ),
                      ),
                    ),
                    style: TextStyle(color: kPrimaryColor),
                  ),
                  SizedBox(height: 50),
                  TextField(
                    // controller: ctrEmail,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      labelText: 'CONFIRM PASSWORD',
                      labelStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.lock,
                        ),
                      ),
                    ),
                    style: TextStyle(color: kPrimaryColor),
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "CREATE ACCOUNT",
                      style: TextStyle(letterSpacing: 1.5),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: kPrimaryColor,
                        // padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                        minimumSize: Size.fromHeight(60)),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 50, bottom: 20),
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: "Already have a account? ",
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: "Login",
                            style: TextStyle(color: kPrimaryColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("kembali");
                                Navigator.pop(context);
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
