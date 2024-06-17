import 'package:flutter/material.dart';
import 'package:newone1/search.dart';

class Newcart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
             Navigator.pushReplacement(
        context,
MaterialPageRoute(builder: (context) => MyApp()),      );
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/2413768_13976.jpg",
              width: 400,  // Set your desired width
              height: 400, // Set your desired height
            ),
            Text(
              "Product name",
              style: TextStyle(
                color: Colors.green,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20,),
            Text("Plants make your life minimal and happy\n love the plants more and enjoy your life."),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(16.0), // Add padding here
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Center align the content vertically
                  crossAxisAlignment: CrossAxisAlignment.center, // Center align the content horizontally
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Evenly space out the columns
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center, // Center align the content vertically
                          children: [
                            Icon(Icons.align_vertical_center_rounded),
                            Text("Height"),
                            Text("300cm-400cm"),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center, // Center align the content vertically
                          children: [
                            Icon(Icons.ac_unit_outlined),
                            Text("Temperature"),
                            Text("20-30 °C"),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center, // Center align the content vertically
                          children: [
                            Icon(Icons.breakfast_dining),
                            Text("Pot"),
                            Text("Ceramic pot"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Price 12.99",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.green, backgroundColor: Colors.white, // Button text (foreground) color
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text("Add to Cart"),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
