import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:trial1/Screens/List.dart';
import 'package:trial1/Screens/register.dart';
import 'package:trial1/constants.dart';
// import 'package:url_launcher/url_launcher.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController ctrEmail = new TextEditingController();
  final TextEditingController ctrPassword = new TextEditingController();
  // final iconProfile = new SvgPicture.asset('Sources/Icons/person-circle.svg');
  // final Uri _url = Uri.parse('https://www.google.co.id/imghp?hl=id');
  // bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: barColor,
      //   title: Text("Login Page"),
      // ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 80, right: 80, bottom: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 50),
              child: Icon(
                Icons.account_circle,
                color: Colors.grey[200],
                size: 200.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
            ),
            Container(
              child: Text(
                'Welcome Back',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 70),
              child: Text(
                'Sign to continue',
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 30,
                  color: Colors.grey[500],
                ),
              ),
            ),
            // Material(
            //   elevation: 18,
            //   shadowColor: Colors.grey,
            // ),
            //   Container(
            //   decoration: BoxDecoration(
            //     boxShadow:  [new BoxShadow(
            //       color: Colors.black,
            //       blurRadius: 5.0, // You can set this blurRadius as per your requirement
            //     ),]
            //   ),
            //   child: TextFormField(
            //     decoration: InputDecoration(
            //         fillColor: Colors.white,
            //         hoverColor: Colors.white,
            //         filled: true,
            //         enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
            //         focusedBorder: OutlineInputBorder(
            //             borderSide: BorderSide(color: Colors.grey, width: 1))),
            //   ),
            // ),
            // Container(
            //   margin: EdgeInsets.all(10),
            //   child: Material(
            //     elevation: 4,
            //     shadowColor: Colors.grey,
            //     borderRadius: BorderRadius.circular(5),
            //     child: Theme(
            //       data: Theme.of(context).copyWith(
            //           colorScheme: ThemeData()
            //               .colorScheme
            //               .copyWith(primary: Color.fromRGBO(1, 186, 112, 1))),
            //       child: const TextField(
            //         decoration: InputDecoration(
            //             prefixIcon: Icon(Icons.email),
            //             border: InputBorder.none,
            //             focusedBorder: UnderlineInputBorder(
            //                 borderSide: BorderSide(
            //                     color: Color.fromRGBO(1, 186, 112, 1))),
            //             labelText: "EMAIL",
            //             labelStyle:
            //                 TextStyle(fontSize: 15, color: Colors.grey)),
            //       ),
            //     ),
            //   ),
            // ),
            TextField(
              controller: ctrEmail,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                // focusedBorder: OutlineInputBorder(
                //   borderSide: BorderSide.none,
                // ),
                // enabledBorder: OutlineInputBorder(
                //   borderSide: BorderSide.none,
                // ),
                // fillColor: kPrimaryColor,
                labelText: 'EMAIL',
                labelStyle: TextStyle(color: Colors.grey),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.email,
                    // color: kPrimaryColor,
                  ),
                ),
              ),
              style: TextStyle(color: kPrimaryColor),
            ),
            SizedBox(height: 40),
            TextField(
              // obscureText: _isObscure,
              controller: ctrPassword,
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
                // show/hide button
                // suffixIcon: IconButton(
                //   color: kPrimaryColor,
                //   icon: Icon(
                //     _isObscure ? Icons.visibility : Icons.visibility_off,
                //   ),
                //   onPressed: () {
                //     setState(
                //       () {
                //         _isObscure = !_isObscure;
                //       },
                //     );
                //   },
                // ),
              ),
              style: TextStyle(color: kPrimaryColor),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(top: 20, bottom: 30),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ],
            ),

            ElevatedButton(
              onPressed: onLogin,
              child: const Text(
                "LOGIN",
                style: TextStyle(letterSpacing: 1.5),
              ),
              style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                  // padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  minimumSize: Size.fromHeight(60)),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, bottom: 20),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "Don't have account? ",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: "create a new account",
                      style: TextStyle(color: kPrimaryColor),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("pindah");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Register(),
                            ),
                          );
                        },
                      // recognizer: new TapGestureRecognizer()
                      //   ..onTap = () sync* {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) => Register(),
                      //       ),
                      //     );
                      //   },
                      // v3
                      // recognizer: new TapGestureRecognizer()
                      //   ..onTap = _launchUrl,
                      // v1
                      // recognizer: new TapGestureRecognizer()
                      //   ..onTap = () {
                      //     launch('https://www.google.co.id/imghp?hl=id');
                      //   },
                      // v2
                      // recognizer: TapGestureRecognizer()
                      //   ..onTap = () async {
                      //     var url = "https://www.google.co.id/imghp?hl=id";
                      //     if (await canLaunch(url)) {
                      //       await launch(url);
                      //     } else {
                      //       throw 'Could not launch $url';
                      //     }
                      //   },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onLogin() {
    if (ctrEmail.text == "admin" && ctrPassword.text == "admin") {
      print("Sukses!");
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => List(),
        ),
      );
    } else {
      print("Gagal!");
    }
  }

  // TapGestureRecognizer _recognizer = TapGestureRecognizer()
  //   ..onTap = () {
  //     print("bergerak");
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => Register(),
  //       ),
  //     );
  //   };

  // @override
  // void dispose() {
  //   _recognizer.dispose();
  //   super.dispose();
  // }

  // Future<void> _launchUrl() async {
  //   if (!await launchUrl(_url)) {
  //     throw 'Could not launch $_url';
  //   }
  // }
}
