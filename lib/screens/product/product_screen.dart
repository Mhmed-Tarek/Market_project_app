import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProductScreen extends StatefulWidget {

  String price ; String category ; String title ; String imge;

  ProductScreen(   this.price ,   this.category ,   this.title ,   this.imge   );

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {


  int _counter = 01;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }


  void _decresetCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: Stack(

        clipBehavior: Clip.antiAlias,
        children: [



          CustomScrollView(

            slivers: <Widget>[


              SliverAppBar(

                leading: IconButton(onPressed: () {
                  Navigator.pop(context);
                },
                  icon: Icon(Icons.arrow_back_ios , color: HexColor("#1c1831"), ) ,

                ),

                elevation: 0.0,
                expandedHeight: MediaQuery.of(context).size.width ,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                   widget.imge,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),


              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${widget.title}",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w700,
                          color: HexColor("#1F1635"),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "${widget.category}",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: HexColor("#757575"),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 7,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "\$${widget.price}.-",
                                style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w900,
                                  color: HexColor("#7E95CE"),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width * 0.8,
                                  child: Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
                                    style: TextStyle(
                                      height: 1.2,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                      color: HexColor("#757575"),
                                    ),
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(

                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Quantity",
                                          style: TextStyle(
                                            height: 1.2,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w100,
                                            color: HexColor("#757575"),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                border: Border.all(width: 1.0),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(
                                                        5.0) //                 <--- border radius here
                                                ),
                                              ),
                                              child: Align(
                                                alignment: Alignment.topCenter,
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                    textStyle: const TextStyle(
                                                        fontSize: 15, height: 1),
                                                  ),
                                                  onPressed: _counter > 0 ?  _decresetCounter : () {},
                                                  child: const Text('-'),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              "$_counter",
                                              style: TextStyle(fontSize: 20),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                border: Border.all(width: 1.0),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(
                                                        5.0) //                 <--- border radius here
                                                ),
                                              ),
                                              child: Center(
                                                //alignment: Alignment(0,4),
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                    textStyle: const TextStyle(
                                                        fontSize: 15, height: 1),
                                                  ),
                                                  onPressed:   _incrementCounter,
                                                  child: const Text('+'),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),


                                  SizedBox(width: MediaQuery.of(context).size.width * 0.14,) ,


                                  Container(

                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Colors",
                                          style: TextStyle(
                                            height: 1.2,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w100,
                                            color: HexColor("#757575"),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                  color: Colors.black12,
                                                  width: 1,
                                                ),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10) //                 <--- border radius here
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),

                                            Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                color: HexColor("#e2b0d5"),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10) //                 <--- border radius here
                                                ),
                                              ),
                                            ),

                                            SizedBox(
                                              width: 4,
                                            ),

                                            Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                color: HexColor("#55b695"),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10) //                 <--- border radius here
                                                ),
                                              ),
                                            ),

                                            SizedBox(
                                              width: 4,
                                            ),

                                            Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                color: HexColor("#1e9dfc"),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10) //                 <--- border radius here
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),

                                            Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10) //                 <--- border radius here
                                                ),
                                              ),
                                            ),

                                          ],
                                        ),
                                      ],
                                    ),
                                  ),



                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 900,)),









            ],
          ),

          Positioned(
            right:20,
            top: MediaQuery.of(context).size.width*1.01 ,
            child: FloatingActionButton(
              elevation: 0.0,
              onPressed: () {
                // Add your onPressed code here!
              },
              child: const Icon(Icons.shopping_cart),
              backgroundColor: HexColor("8499d8"),
            ),
          ),


          //_buldma (),

          // Positioned(
          //
          //
          //
          //   top: top,
          //
          //   right: 16,
          //
          //   child: Container(
          //   height: 120.0,
          //   width: 120.0,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage(
          //           'asset/images/ProductAsset/cart.png'),
          //       fit: BoxFit.fill,
          //     ),
          //     shape: BoxShape.circle,
          //   ),
          // ), ),


        ],
      ),
    );



  }
}


