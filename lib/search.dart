import 'package:flutter/material.dart';
import 'package:newone1/card.dart';
import 'package:newone1/cart.dart';
import 'package:newone1/splash_one.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: const [
            CircleAvatar(
              radius: 18,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person_2,
                color: Colors.white,
              ),
            )
          ],
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Splash()),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
            ),
          ),
          title: const Text("Search Product"),
          centerTitle: true,
        ),
        drawerEnableOpenDragGesture: true,
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                child: CircleAvatar(
                  radius: 80,
                  child: Icon(Icons.person)
                ),
              ),
              ListTile(
                title: const Text(
                  'Profile',
                  style: TextStyle(color: Colors.blue),
                ),
                // leading: Icon(
                //   Icons.person,
                //   color: Colors.blue,
                // ),
                leading: IconButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Profile()));
                  },
                  icon: const Icon(
                    Icons.account_circle_outlined,
                    color: Colors.blue,
                  ),
                ),
              ),
              const ListTile(
                title: Text(
                  'Settings',
                  style: TextStyle(color: Colors.blue),
                ),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            SearchFieldWidget(),
            Expanded(
                child:
                    ProductListScreen()) // Use Expanded to allow the grid to take up remaining space
          ],
        ),
      ),
    );
  }
}

class SearchFieldWidget extends StatefulWidget {
  @override
  _SearchFieldWidgetState createState() => _SearchFieldWidgetState();
}

class _SearchFieldWidgetState extends State<SearchFieldWidget> {
  TextEditingController _controller = TextEditingController();

  void _onSearchChanged(String query) {
    // Handle search query changes here
    print('Search query: $query');
  }

  void _onFilterPressed() {
    // Handle filter button press here
    print('Filter button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _controller,
            onChanged: _onSearchChanged,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Plant',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
              filled: true,
              contentPadding: EdgeInsets.all(16.0),
              suffixIcon: IconButton(
                icon: Icon(Icons.filter_list),
                onPressed: _onFilterPressed,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
        name: 'Product 1',
        price: '\$110',
        imageUrl: 'assets/images/2413768_13976.jpg'),
    Product(
        name: 'Product 2',
        price: '\$212',
        imageUrl: 'assets/images/2413768_13976.jpg'),
    Product(
        name: 'Product 3',
        price: '\$305',
        imageUrl: 'assets/images/2413768_13976.jpg'),
    Product(
        name: 'Product 4',
        price: '\$305',
        imageUrl: 'assets/images/2413768_13976.jpg'),
    Product(
        name: 'Product 5',
        price: '\$305',
        imageUrl: 'assets/images/2413768_13976.jpg'),
    Product(
        name: 'Product 6',
        price: '\$305',
        imageUrl: 'assets/images/2413768_13976.jpg'),
    Product(
        name: 'Product 7',
        price: '\$305',
        imageUrl: 'assets/images/2413768_13976.jpg'),
    // Add more products
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Found 10 result', 
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCard(product: products[index]);
              },
            ),
          ),
        ),
      ],
    );
  }
}

class Product {
  final String name;
  final String price;
  final String imageUrl;

  Product({required this.name, required this.price, required this.imageUrl});
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset(
                product.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  product.price,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  // logoic 
                  // --------------------------------------------------------------------------
                  // __________________________________

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Newcart()),
                  );
                
                  print('Product added to cart: ${product.name}');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
