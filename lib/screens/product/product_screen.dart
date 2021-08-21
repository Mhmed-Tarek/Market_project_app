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


            controller: _scrollController,

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


          _sliverButtom(),


        ],
      ),
    );





  }


  late ScrollController _scrollController;
  double top = 256.0 - 4.0;
  void initState() {
    super.initState();
    _scrollController = new ScrollController();
    _scrollController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }


  Widget _sliverButtom() {
    final double defaultTopMargin =  MediaQuery.of(context).size.width*0.9;
    final double scaleStart =  MediaQuery.of(context).size.width*0.9 - (20) ;
    final double scaleEnd = scaleStart / 2;

    double top = defaultTopMargin;
    double scale = 1.0;
    if (_scrollController.hasClients) {
      double offset = _scrollController.offset;
      top -= offset;
      if (offset < defaultTopMargin - scaleStart) {
        //offset small => don't scale down
        scale = 1.0;
      } else if (offset < defaultTopMargin - scaleEnd) {
        //offset between scaleStart and scaleEnd => scale down
        scale = (defaultTopMargin - scaleEnd - offset) / scaleEnd;
      } else {
        //offset passed scaleEnd => hide fab
        scale = 0.0;
      }
    }

    return Positioned(
        top: top,
        right: 16.0,
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()..scale(scale),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 4),
                            blurRadius: 5.0)
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                        colors: [
                          HexColor("#7995d3"), HexColor("#a5a6dc"),
                        ],
                      ),
                      color: Colors.deepPurple.shade300,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all(Size(70, 70)),
                        backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                        // elevation: MaterialStateProperty.all(3),
                        shadowColor:
                        MaterialStateProperty.all(Colors.transparent),
                      ),
                      onPressed: () {},
                      child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                          ),
                          child: Icon(
                            Icons.shopping_cart,
                            size: 40,
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }


}


