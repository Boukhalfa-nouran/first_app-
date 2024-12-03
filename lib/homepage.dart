import 'package:firts_app/detaills.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List items = [
    // pour fair gruidview et entrer les card plus facile et ne ecrit pas un grand grand
    {
      "Image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQheVWPM7b6sA1ABUEuBqrbxsAAzXwNMOkSwQ&s",
      "title": "montre",
      "subtitle": "description",
      "price": "350&"
    },
    {
      "Image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQheVWPM7b6sA1ABUEuBqrbxsAAzXwNMOkSwQ&s",
      "title": "montre",
      "subtitle": "description",
      "price": "350&"
    },
    {
      "Image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQheVWPM7b6sA1ABUEuBqrbxsAAzXwNMOkSwQ&s",
      "title": "montre",
      "subtitle": "description",
      "price": "350&"
    },
    {
      "Image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQheVWPM7b6sA1ABUEuBqrbxsAAzXwNMOkSwQ&s",
      "title": "montre",
      "subtitle": "description",
      "price": "350&"
    },
    {
      "Image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQheVWPM7b6sA1ABUEuBqrbxsAAzXwNMOkSwQ&s",
      "title": "montre",
      "subtitle": "description",
      "price": "350&"
    },
    {
      "Image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQheVWPM7b6sA1ABUEuBqrbxsAAzXwNMOkSwQ&s",
      "title": "montre",
      "subtitle": "description",
      "price": "350&"
    },
    {
      "Image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQheVWPM7b6sA1ABUEuBqrbxsAAzXwNMOkSwQ&s",
      "title": "montre",
      "subtitle": "description",
      "price": "350&"
    },
  ];

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
      body: Container(
        padding: const EdgeInsets.all(25),
        child: ListView(children: [
          Row(
            children: [
              Expanded(
                  child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.blue,
                    ),
                    hintText: "Search",
                    border: InputBorder.none,
                    fillColor: Colors.grey[200],
                    filled: true),
              )),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: const Icon(
                  Icons.menu,
                  size: 40,
                ),
              ),
            ],
          ),
          Container(
            height: 30,
          ),
          const Text(
            "Categories",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //1
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(100)),
                    child: const Icon(
                      Icons.laptop,
                      size: 40,
                    ),
                    padding: const EdgeInsets.all(15),
                  ),
                  const Text(
                    "Laptop",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              //2
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(100)),
                    child: const Icon(
                      Icons.phone_android,
                      size: 40,
                    ),
                    padding: const EdgeInsets.all(15),
                  ),
                  const Text(
                    "Phone",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              //3
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(100)),
                    child: const Icon(
                      Icons.tablet,
                      size: 40,
                    ),
                    padding: const EdgeInsets.all(15),
                  ),
                  const Text(
                    "Tablet",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              //4
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(100)),
                    child: const Icon(
                      Icons.shopping_bag,
                      size: 40,
                    ),
                    padding: const EdgeInsets.all(15),
                  ),
                  const Text(
                    "Accessories",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 20,
          ),
          const Text(
            "Best Selling",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          GridView.builder(
            // pour separer
            itemCount: items.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent:
                    230), //pour separes ecran en 2 chaqun prend 230 space
            shrinkWrap: true,
            itemBuilder: (context, i) {
              // quand etulise gridview en utilise itemsbuilder a la place children pour entrer les info dianamic
              return InkWell(
                  // pour utiliser onTap

                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => itemDetails(
                          data: items[i]), // pour aller a la 2eme page
                    ));
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Container(
                            width: 300,
                            color: Colors.grey[300],
                            child: Image.network(items[i]['Image'],
                                height: 130, fit: BoxFit.cover)),
                        Text(
                          items[i]['title'],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          items[i]['subtitle'],
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        Text(
                          items[i]['price'],
                          style: const TextStyle(
                              color: Color.fromARGB(255, 137, 125, 11),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ));
            },
          )
        ]),
      ),
    );
  }
}
