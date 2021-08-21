import 'package:flutter/cupertino.dart';
//import 'package:market_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:market_app/models/button_model.dart';
import 'package:market_app/components/custom_button.dart';
import 'package:market_app/screens/login/LoginScreen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  Widget build(BuildContext context) {
    double scale = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(

        color: Colors.white,
        child: SingleChildScrollView(
          child: Container(
            height: scale>600? scale : 600,
            child:
              Column(
                children: [
                  Expanded(
                    flex: 3, //
                    child: Container(
                      color: Colors.white,
                    ),
                  ),

                  Text(
                    "Decor &",
                    style: TextStyle(
                      fontSize: scale * 0.055 > 45? scale * 0.055 : 45 ,
                      color: HexColor("#1F1635"),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "enjoy!",
                    style: TextStyle(
                      fontSize: scale * 0.055 > 45? scale * 0.055 : 45 ,
                      color: HexColor("#1F1635"),
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Expanded(
                    flex: 1, // 60% of space => (6/(6 + 4))
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Expanded(
                        child: Image.asset(
                          'asset/images/SartAsset/start.png',
                          height: scale * 0.47 > 350? scale * 0.47 : 350,
                        ),
                      ),

                    ],
                  ),
                  Expanded(
                    flex: 2, // 60% of space => (6/(6 + 4))
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                  // SizedBox(
                  //   height: scale * 0.08,
                  // ),
                  CustomButton(
                    buttonModel: CustomButtonModel(
                        title: "Get started",
                        onButtonClick: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                          );
                        }),
                  ),
                  // Container(
                  //   decoration: BoxDecoration(gradient: LinearGradient(colors: [HexColor("#8492cf"), HexColor("#a2aad1") ])),
                  //   child: ElevatedButton(
                  //     onPressed: () {},
                  //     style: ElevatedButton.styleFrom(primary: Colors.transparent,shadowColor: Colors.transparent),
                  //     child: Text('Elevated Button'),
                  //   ),
                  // ),

                  Expanded(
                    flex: 2, // 60% of space => (6/(6 + 4))
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                  // SizedBox(
                  //   height: scale * 0.08,
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            "Sing in",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                      )
                    ],
                  ),
                  // SizedBox(
                  //   height: scale * 0.08,
                  // ),
                  Expanded(
                    flex: 2, // 60% of space => (6/(6 + 4))
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

          ),
        ),
      ),
    );
  }
}
