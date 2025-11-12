import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class C2ApiCall extends StatefulWidget {
  const C2ApiCall({super.key});

  @override
  State<C2ApiCall> createState() => _C2ApiCallState();
}

class _C2ApiCallState extends State<C2ApiCall> {
  List products = [];
  bool isLoading = false;

  @override
  void initState(){
    super.initState();
    fetchProducts();
  }
  
  Future<void> fetchProducts () async {
    final url = Uri.parse('http://35.73.30.144:2008/api/v1/ReadProduct');
    final response = await http.get(url);
    
    print(response.statusCode);
    print(response.body);
    

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);

      setState(() {
        products = jsonResponse['data'];
        isLoading = false;
      });
    } else {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: isLoading ? Center(child: CircularProgressIndicator())
      : GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          childAspectRatio: 0.6
        ), 
        itemCount: products.length,
        itemBuilder: (context, index) {
          final item = products[index];
          return Card(
            child: Column(
              children: [
                SizedBox(
                  child: Image.network(item['Img'].toString()),
                ),
                Text(
                  item['ProductName'],
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'Prize: \$${item['UnitPrice']} | Qty: ${item['Qty']}'
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}