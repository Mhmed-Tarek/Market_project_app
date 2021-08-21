import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:market_app/models/button_model.dart';
import 'package:market_app/components/custom_button.dart';
import 'package:market_app/screens/home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _email, _password;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double scale = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: scale > 600 ? scale : 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(flex: 3, child: Container()),
                Container(
                  width: scale * 0.15 > 75 ? scale * 0.15 : 75,
                  height: scale * 0.15 > 75 ? scale * 0.15 : 75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(17),
                        topRight: Radius.circular(17),
                        bottomLeft: Radius.circular(17),
                        bottomRight: Radius.circular(17)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  //color: Colors.deepPurple,
                  //

                  child: Image.asset(
                    'asset/images/LoginAsset/place.png',
                  ),
                ),
                Expanded(flex: 1, child: Container()),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Find your",
                  style: TextStyle(
                    fontSize: scale * 0.05 > 25? scale * 0.05 : 25,
                    color: HexColor("#1F1635"),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "unique piece!",
                  style: TextStyle(
                    fontSize: scale * 0.05 > 25? scale * 0.05 : 25,
                    color: HexColor("#1F1635"),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Join us,",
                  style: TextStyle(
                    fontSize: 18,
                    color: HexColor("#1F1635"),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 34,
                ),
                //Expanded(flex: 1, child: Container()),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                      ),
                      Container(
                        width: scale * 0.43 > 200 ? scale * 0.43 : 200,
                        //height : scale * 0.09 > 30 ? scale * 0.09 : 30,
                        child: TextFormField(
                          style: TextStyle(  fontSize: scale * 0.02 > 15? scale * 0.02 : 15, ),
                          decoration: InputDecoration(
                            labelText: "E-mail",
                            contentPadding: EdgeInsets.all(12),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          onFieldSubmitted: (String? value) {
                            _email = value;
                          },
                          onSaved: (String? value) {
                            _email = value;
                          },
                          validator: (String? value) {
                            if (value == null ||
                                value.isEmpty ||
                                !value.toLowerCase().contains("@") ||
                                !value.toLowerCase().contains(".com")) {
                              return "Please enter a valid email";
                            } else {
                              _email = value;
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Container(
                        width: scale * 0.43 > 200 ? scale * 0.43 : 200,
                        //height : scale * 0.06 > 30 ? scale * 0.06 : 30,
                        child: TextFormField(
                          style: TextStyle(  fontSize: scale * 0.02 > 15? scale * 0.02 : 15, ),
                          decoration: InputDecoration(

                            labelText: "Password",
                            contentPadding: EdgeInsets.all(12),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                          onFieldSubmitted: (String? value) {
                            _password = value;
                            print("Folid");
                          },
                          onSaved: (String? value) {
                            _password = value;
                            print("Folid");
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter a password";
                            } else {
                              _password = value;
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: scale * 0.05 > 20? scale * 0.05 : 20,
                      ),
                      CustomButton(
                        buttonModel: CustomButtonModel(
                            title: "Create Account",
                            onButtonClick: () {
                              if (_formKey.currentState!.validate()) {
                                print("Form is valid");
                                print("$_email");
                                if (_email.toLowerCase() == "mohamed@gmail.com" &&
                                    _password == "123456") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen()),
                                  );
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text(
                                            "Email or Password doesn't match")),
                                  );
                                }
                              } else {
                                print("Form is not valid");
                              }
                            }),
                      ),
                    ],
                  ),
                ),

                //Expanded(flex: 1, child: Container()),

                SizedBox(
                  height: 25,
                ),
                Text(
                  "Sign up with",
                  style: TextStyle(fontSize: scale * 0.017 > 10? scale * 0.017 : 10 , fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 17,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  //color: Colors.deepPurple,
                  //

                  child: Image.asset(
                    'asset/images/LoginAsset/facebookLogo.png',
                    width: 50,
                    height: 50,
                  ),
                ),
                SizedBox(
                  height: scale * 0.04 > 15? scale * 0.04 : 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style:
                          TextStyle(fontSize: scale * 0.017 > 10? scale * 0.017 : 10, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          "Sing in",
                          style: TextStyle(
                              fontSize: scale * 0.0173 > 10? scale * 0.0173 : 10,  fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(flex: 2, child: Container()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
