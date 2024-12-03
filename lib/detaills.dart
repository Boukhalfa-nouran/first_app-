import 'package:flutter/material.dart';

class itemDetails extends StatefulWidget {
  final data; // pour avaez les infos de la page presedente
  const itemDetails({super.key, this.data});

  @override
  State<itemDetails> createState() => _itemDetailsState();
}

class _itemDetailsState extends State<itemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          // pour fair une barre sur l aplication
          iconSize: 30,
          selectedItemColor: Colors.orange,
          items: const [
            // sont les icon de sous barre
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "*"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: "*"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "*"),
          ]),
      endDrawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.grey),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shop_2_rounded,
              color: Colors.black,
            ),
            Text(
              "Ecommerce ",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Noran ",
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Image.network(widget.data['Image']),
          Container(
            child: Text(
              widget.data['title'],
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Text(
              widget.data['subtitle'],
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.grey, fontSize: 20),
            ),
          ),
          Container(
            child: Text(
              widget.data['price'],
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Color.fromARGB(255, 88, 81, 22),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Color :  "),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.orange),
                  color: Colors.grey,
                ),
              ),
              Text("  Grey    "),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black,
                ),
              ),
              Text("  Black ")
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              " SiZe  :           34   36  40   41     ",
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
            child: MaterialButton(
              color: Colors.black,
              textColor: Colors.white,
              height: 60,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ), // Bordures arrondies pour un cercle
              onPressed: () {},
              child: Text("add to cart"),
            ),
          ),
        ],
      ),
    );
  }
}
