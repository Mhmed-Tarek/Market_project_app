import 'dart:convert';
import 'package:http/http.dart' as http;


abstract class HttpWrapperInterface {
  Future<dynamic> httpGet(String endPoint);
// Future<dynamic> httpPost(String endPoint, Map request);
//Future<dynamic> httpPut(String endPoint, Map request);
}

class HttpWrapper implements HttpWrapperInterface {


  @override

  Future httpGet(String endPoint) async {

    Uri uri = Uri.parse( "https://fakestoreapi.com/" + endPoint);
    http.Response response = await http.get(uri);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Something wrong happened, please try again later");
    }
  }



}


class product {

  String title , category ,  description , image ;
  dynamic  price;
  dynamic  id ;


  product({
    required this.title,
    required this.id,
    required this.category,
    required this.price,
    required this.description,
    required this.image,
  });


  factory product.fromJson( Map<String, dynamic> jsonObject ) {

    return product(
      id: jsonObject['id'],
      title: jsonObject['title'],
      category: jsonObject['category'],
      description: jsonObject['description'],
      image: jsonObject['image'],
      price: jsonObject['price'],


    );

  }
}


class productRepo {

  Future<List<product>> getproduct() async {

    HttpWrapper httpWrapper = new HttpWrapper();

    Iterable response = await httpWrapper.httpGet("products");

    //print("Users response");

    //print(registrationResponse);

    //Iterable usersIterable = registrationResponse['data'];

    List<product> productlist =
    response.map( (item) => product.fromJson(item) ).toList();

    return productlist;
  }


}



