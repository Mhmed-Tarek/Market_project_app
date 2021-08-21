import 'package:flutter/material.dart';
import 'package:market_app/models/button_model.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomButton extends StatelessWidget {
  // const CustomButton({Key? key}) : super(key: key);

  final CustomButtonModel buttonModel;
  CustomButton({required this.buttonModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (this.buttonModel.onButtonClick != null) {
          this.buttonModel.onButtonClick!();
        }
      },
      child: Container(

        width: 203,
        height: 49,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular(25) //                 <--- border radius here
          ),

          gradient: LinearGradient(
              colors: [HexColor("#7995d3"), HexColor("#a5a6dc")]),
        ),
        child: Center( child: Text("${this.buttonModel.title}" , style: TextStyle(color: Colors.white , fontSize: 20,), ), ),
      ),
    );
  }
}
