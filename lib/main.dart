import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            // Box
            Container(
              height: 2000,
              width: double.infinity,
            ),
            // Body
            Positioned(
              top: 20,
              left: 0,
              right: 0,
              bottom: 0,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    // 2 dòng text
                    Text('Hi Guy'),
                    Text('Where are you going next?'),
                    // Thanh search
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.all(10),
                      color: Colors.white,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search your destination',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    // Grid 1x3
                    GridView.count(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,
                      children: List.generate(3, (index) {
                        return Container(
                          color: Colors.green,
                          margin: EdgeInsets.all(10),
                          height: 100,
                          width: 100,
                        );
                      }),
                    ),
                    // 1 dòng text
                    Text('Popular Destinations'),
                    // Grid 2x2
                    GridView.count(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      children: List.generate(4, (index) {
                        return Container(
                          color: Colors.orange,
                          margin: EdgeInsets.all(10),
                          height: 100,
                          width: 100,
                        );
                      }),
                    ),
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
