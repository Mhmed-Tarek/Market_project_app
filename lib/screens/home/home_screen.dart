import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:market_app/models/button_model.dart';
import 'package:market_app/components/custom_button.dart';
import 'package:market_app/data/productlist.dart';
import 'package:market_app/models/product_model.dart';
import 'package:market_app/components/custom_product.dart';
import 'package:market_app/screens/product/product_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<product>> productFuture;

  @override
  void initState() {
    super.initState();
    productFuture = productRepo().getproduct();
  }

  @override
  Widget build(BuildContext context) {
    double scale = MediaQuery.of(context).size.height;
    double scale2 = MediaQuery.of(context).size.width;
    double tab = ((scale2 > 350 ? scale2 : 350) - 70);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        //centerTitle: true,

        bottom: PreferredSize(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 50,
                width: scale2 > 420 ? scale2 : 420,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 3,
                            child: InkWell(
                              onTap: () {
                                print("tapped");
                              },
                              child: Container(
                                height: 35,
                                padding: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color:
                                        HexColor("#1F1635").withOpacity(0.52),
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          10) //                 <--- border radius here
                                      ),
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'asset/images/icon-03.png')),
                                          color: Colors.transparent,
                                        ),
                                      ),
                                      Text(
                                        "Price Range",
                                        style: TextStyle(
                                          color: HexColor("#1F1635")
                                              .withOpacity(0.52),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 2,
                            child: InkWell(
                              onTap: () {
                                print("tapped");
                              },
                              child: Container(
                                height: 35,
                                padding: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  //color: Colors.transparent,
                                  border: Border.all(
                                    color:
                                        HexColor("#1F1635").withOpacity(0.52),
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          10) //                 <--- border radius here
                                      ),
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'asset/images/icon-03.png')),
                                          //color: Colors.transparent,
                                        ),
                                      ),
                                      Text(
                                        "Tags",
                                        style: TextStyle(
                                          color: HexColor("#1F1635")
                                              .withOpacity(0.52),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 2,
                            child: InkWell(
                              onTap: () {
                                print("tapped");
                              },
                              child: Container(
                                height: 35,
                                padding: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color:
                                        HexColor("#1F1635").withOpacity(0.52),
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          10) //                 <--- border radius here
                                      ),
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'asset/images/icon-03.png')),
                                          color: Colors.transparent,
                                        ),
                                      ),
                                      Text(
                                        "Style",
                                        style: TextStyle(
                                          color: HexColor("#1F1635")
                                              .withOpacity(0.52),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 2,
                            child: InkWell(
                              onTap: () {
                                print("tapped");
                              },
                              child: Container(
                                height: 35,
                                padding: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color:
                                        HexColor("#1F1635").withOpacity(0.52),
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          10) //                 <--- border radius here
                                      ),
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'asset/images/icon-03.png')),
                                          color: Colors.transparent,
                                        ),
                                      ),
                                      Text(
                                        "Color",
                                        style: TextStyle(
                                          color: HexColor("#1F1635")
                                              .withOpacity(0.52),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
            preferredSize: Size.fromHeight(70)),

        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          // crossAxisAlignment: CrossAxisAlignment.center,
          //  mainAxisAlignment: MainAxisAlignment.start,

          children: [
            InkWell(
              //highlightColor: HexColor("#1F1635"),
              onTap: () {
                print("tapped");
              },

              child: Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/images/HomeAsset/menu.png')),
                  color: Colors.transparent,
                ),
              ),
            ),
            Row(
              children: [
                Text("Categories",
                    style: TextStyle(color: HexColor("#1F1635"))),
                InkWell(
                  //highlightColor: HexColor("#1F1635"),
                  onTap: () {
                    print("tapped");
                  },

                  child: Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('asset/images/HomeAsset/down.png')),
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 32,
              height: 32,
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(),
            Expanded(
              child: FutureBuilder<List<product>>(
                  future: productFuture,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(
                          snapshot.error.toString(),
                        ),
                      );
                    } else if (snapshot.hasData) {
                      List<product> products = snapshot.data!;
                      return GridView.count(
                        childAspectRatio: 0.7,
                        crossAxisCount: 2,
                        padding: EdgeInsets.all(16),
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,

                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        ProductScreen("190", "Chairs", "Chair",
                                            "https://i.imgur.com/KgUVhwh.jpg"),
                                transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
                                  const begin = Offset(1.0, 0.0);
                                  const end = Offset.zero;
                                  const curve = Curves.ease;

                                  var tween = Tween(begin: begin, end: end)
                                      .chain(CurveTween(curve: curve));

                                  return SlideTransition(
                                    position: animation.drive(tween),
                                    child: child,
                                  );
                                },
                              ));
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
                                    child: Container(
                                      //width: 200 ,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'asset/images/chairs.jpg'),
                                          fit: BoxFit.fitHeight,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                20) //                 <--- border radius here
                                            ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Chairs",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: HexColor("#1F1635")),
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
                                                      color:
                                                          HexColor("#1F1635"),
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                Text(
                                                  "\$190.-",
                                                  style: TextStyle(
                                                      fontSize: scale2 > 300
                                                          ? scale2 * 0.05
                                                          : 12,
                                                      fontWeight:
                                                          FontWeight.w900),
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
                          ),
                          InkWell(
                            onTap: () {

                              Navigator.of(context).push(PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                    ProductScreen("140", "Night Stands", "Night Stand",
                                        "https://i.imgur.com/vS7tJlx.jpg"),
                                transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
                                  const begin = Offset(1.0, 0.0);
                                  const end = Offset.zero;
                                  const curve = Curves.ease;

                                  var tween = Tween(begin: begin, end: end)
                                      .chain(CurveTween(curve: curve));

                                  return SlideTransition(
                                    position: animation.drive(tween),
                                    child: child,
                                  );
                                },
                              ));

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
                                    child: Container(
                                      //width: 200 ,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'asset/images/nightStands.jpg'),
                                          fit: BoxFit.fitHeight,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                20) //                 <--- border radius here
                                            ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Night Stands",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: HexColor("#1F1635")),
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
                                                      color:
                                                          HexColor("#1F1635"),
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  "\$140.-",
                                                  style: TextStyle(
                                                      fontSize: scale2 > 300
                                                          ? scale2 * 0.05
                                                          : 12,
                                                      fontWeight:
                                                          FontWeight.w900),
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
                          ),
                          InkWell(
                            onTap: () {

                              Navigator.of(context).push(PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                    ProductScreen("420", "Sofas", "Sofa",
                                        "https://i.imgur.com/wufrHAM.jpg"),
                                transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
                                  const begin = Offset(1.0, 0.0);
                                  const end = Offset.zero;
                                  const curve = Curves.ease;

                                  var tween = Tween(begin: begin, end: end)
                                      .chain(CurveTween(curve: curve));

                                  return SlideTransition(
                                    position: animation.drive(tween),
                                    child: child,
                                  );
                                },
                              ));

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
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'asset/images/Sofas.jpg'),
                                          fit: BoxFit.fitHeight,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                20) //                 <--- border radius here
                                            ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Sofas",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: HexColor("#1F1635")),
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
                                                      color:
                                                          HexColor("#1F1635"),
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                Text(
                                                  "\$420.-",
                                                  style: TextStyle(
                                                      fontSize: scale2 > 300
                                                          ? scale2 * 0.05
                                                          : 12,
                                                      fontWeight:
                                                          FontWeight.w900),
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
                          ),
                          InkWell(
                            onTap: () {

                              Navigator.of(context).push(PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                    ProductScreen("320", "Desks", "Desk",
                                        "https://i.imgur.com/eEwPDb0.jpg"),
                                transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
                                  const begin = Offset(1.0, 0.0);
                                  const end = Offset.zero;
                                  const curve = Curves.ease;

                                  var tween = Tween(begin: begin, end: end)
                                      .chain(CurveTween(curve: curve));

                                  return SlideTransition(
                                    position: animation.drive(tween),
                                    child: child,
                                  );
                                },
                              ));


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
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'asset/images/desks.jpg'),
                                          fit: BoxFit.fitHeight,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                20) //                 <--- border radius here
                                            ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Desks",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: HexColor("#1F1635")),
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
                                                      color:
                                                          HexColor("#1F1635"),
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                Text(
                                                  "\$320.-",
                                                  style: TextStyle(
                                                      fontSize: scale2 > 300
                                                          ? scale2 * 0.05
                                                          : 12,
                                                      fontWeight:
                                                          FontWeight.w900),
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
                          ),
                        ],

                        // children: List.generate(
                        //     products.length,
                        //         (index) => CustomProduct(
                        //           ProductModel: new CustomProductModel(
                        //         title: products[index].title,
                        //         price: products[index].price,
                        //         image: products[index].image,
                        //         description: products[index].description,
                        //         id: products[index].id,
                        //         category: products[index].category ,
                        //         width: scale2,
                        //         height: scale,
                        //         onProductClick: () {
                        //
                        //           print("Clicked user id ${products[index].id}");
                        //           // Navigator.of(context).push(
                        //           //   MaterialPageRoute(
                        //           //     builder: (context) => UserDetailsScreen(
                        //           //       selectedUser: users[index],
                        //           //     ),
                        //           //   ),
                        //           // );
                        //
                        //         },
                        //       ),
                        //     )),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),

              // child: GridView.count(
              //   padding: const EdgeInsets.all(20),
              //   crossAxisSpacing: 10,
              //   mainAxisSpacing: 10,
              //   crossAxisCount: 2,
              //   children: [
              //
              //     Container(
              //       width: 100,
              //       height: 100,
              //       padding: const EdgeInsets.all(8),
              //       child: const Text("He'd have you all unravel at the"),
              //       color: Colors.teal[100],
              //     ),
              //
              //   ],
              // ),
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(
              buttonModel: CustomButtonModel(
                  title: "Scan my Space", onButtonClick: () {}),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [HexColor("#ffffff"), HexColor("e2e2e2")]),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        ProductScreen("price", "category", "title", "imge"),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
