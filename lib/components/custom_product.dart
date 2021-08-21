import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:market_app/models/product_model.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomProduct extends StatelessWidget {
  final CustomProductModel ProductModel;
  CustomProduct({required this.ProductModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: () {
        if (this.ProductModel.onProductClick != null) {
          this.ProductModel.onProductClick!();
        }
      },

      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(
                20) //                 <--- border radius here
            ),
            ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Center(
              child: FadeInImage.assetNetwork(
                width: 170,
                height: 200,
                image: "${this.ProductModel.image}",
                placeholder: "asset/images/product-placeholder.png",
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(
                          20) //                 <--- border radius here
                      ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white.withAlpha(0),
                      Colors.white12,
                      Colors.white54,
                    ],
                  )),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'asset/images/HomeAsset/add.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),


                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${this.ProductModel.category}",
                        style:
                            TextStyle(fontSize: 15, color: HexColor("#1F1635")),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "From:  ",
                            style: TextStyle(
                                fontSize: 10,
                                color: HexColor("#1F1635"),
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "\$${this.ProductModel.price}.-",
                            style: TextStyle(
                                fontSize: this.ProductModel.width > 300 ? this.ProductModel.width*0.05 : 12   , fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
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
