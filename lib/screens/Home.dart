import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  List<String> products = ['Bed', 'Sofa', 'Chair'];
  List<String> productDetails = [
    'King Size Bed',
    'King Size Sofa',
    'Wooden Comfortable chair'
  ];
  List<int> price = [3000, 2000, 1000];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
        // leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      ),
      backgroundColor: Colors.grey.shade800,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountEmail: Text('Oluwadhammieh@gmail.com'),
              accountName: Text('Oyegbile Praise'),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage('images/illustration.png'),
              ),
            ),
            ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {}),
            ListTile(
                leading: const Icon(Icons.shopping_cart),
                title: const Text('Shop'),
                onTap: () {}),
            ListTile(
                leading: const Icon(Icons.favorite),
                title: const Text('Favourite'),
                onTap: () {}),
            const Padding(
              padding: EdgeInsets.all(14.0),
              child: Text('Labels'),
            ),
            const ListTile(
              leading: Icon(Icons.label),
              title: Text('Red'),
            ),
            const ListTile(
              leading: Icon(Icons.label_important),
              title: Text('Red'),
            ),
            const ListTile(
              leading: Icon(Icons.label_important_outline),
              title: Text('Red'),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5.0,
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  Text(
                    'Shop',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  Text(
                    'Fav',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          constraints: BoxConstraints.expand(width: 330, height: 450),
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.white24,
                  offset: Offset(0, 2),
                  spreadRadius: 5,
                  blurRadius: 10)
            ],
            image: DecorationImage(
              image: AssetImage('images/flower.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Stack(
            children: const [
              Text(
                'Editor\'s choice',
                style: TextStyle(color: Colors.white70, fontSize: 10),
              ),
              Positioned(
                top: 15.0,
                child: Text(
                  'The art of Making coffee',
                  style: TextStyle(color: Colors.white70, fontSize: 22),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 20,
                child: Text(
                  'Learn to make the perfect Coffee',
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Text(
                  'Praise codes',
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        // Center(
        //   child: Stack(
        //     alignment: Alignment.center,
        //     children: [
        //       Container(
        //         width: 300,
        //         height: 200,
        //         color: Colors.blue,
        //       ),
        //       Positioned(
        //         bottom: 0,
        //         child: Container(
        //           width: 200,
        //           height: 100,
        //           color: Colors.black,
        //         ),
        //       ),
        //       Container(
        //         width: 100,
        //         height: 50,
        //         color: Colors.white,
        //       ),
        //     ],
        //   ),
        // )
        // ListView.builder(
        //   itemCount: products.length,
        //   itemBuilder: (context, index) {
        //     return ListTile(
        //       leading: CircleAvatar(
        //         child: Text(products[index][0]),
        //       ),
        //       title: Text(products[index]),
        //       subtitle: Text(productDetails[index]),
        //       trailing: Text(price[index].toString()),
        //     );
        //   },
        // )
        // ListView(
        //   children: [
        //     ListTile(
        //       leading: CircleAvatar(
        //           child: Icon(Icons.alarm),
        //           backgroundColor: Colors.black26),
        //       title: Text('Sales'),
        //       subtitle: Text('Sales of the week'),
        //       trailing: Icon(Icons.add),
        //       tileColor: Colors.brown.shade100,
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.alarm),
        //       title: Text('Sales'),
        //       subtitle: Text('Sales of the week'),
        //       trailing: Icon(Icons.add),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.alarm),
        //       title: Text('Sales'),
        //       subtitle: Text('Sales of the week'),
        //       trailing: Icon(Icons.add),
        //       onTap: () {},
        //     ),
        //   ],
        // )
        // Column(
        //   children: [
        //     Row(
        //       children: const [
        //         Expanded(
        //             child: Image(image: AssetImage('images/illustration.png'))),
        //         Expanded(
        //             flex: 2,
        //             child: Image(image: AssetImage('images/illustration.png'))),
        //         Expanded(
        //             child: Image(image: AssetImage('images/illustration.png')))
        //       ],
        //     ),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: const [
        //         Icon(Icons.star),
        //         Icon(Icons.star),
        //         Icon(Icons.star),
        //         Icon(Icons.star_border),
        //         Icon(Icons.star_border_outlined),
        //       ],
        //     ),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceAround,
        //       children: [
        //         Column(
        //           children: const [
        //             Icon(
        //               Icons.phone,
        //               size: 35.0,
        //             ),
        //             Text('Phone')
        //           ],
        //         ),
        //         Column(
        //           children: const [
        //             Icon(Icons.alt_route, size: 35.0),
        //             Text('Route')
        //           ],
        //         ),
        //         Column(
        //           children: const [
        //             Icon(
        //               Icons.share,
        //               size: 35.0,
        //             ),
        //             Text('Share')
        //           ],
        //         )
        //       ],
        //     ),
        //   ],
        // )
        // Center(
        //   child: Directionality(
        //     textDirection: TextDirection.rtl,
        //     child: ElevatedButton.icon(
        //       icon: const Icon(Icons.add_shopping_cart_outlined),
        //       label: const Text('Let Begin'),
        //       onPressed: () {},
        //       style: ElevatedButton.styleFrom(
        //         padding: const EdgeInsets.all(20.0),
        //         shape: const StadiumBorder(),
        //           fixedSize: const Size(300, 80)
        //       ),
        //       // child: const Text('Lets begin'),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
