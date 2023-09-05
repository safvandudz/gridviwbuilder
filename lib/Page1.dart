import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List img=[
"Assets/1920x1080.jpg",
    "Assets/1920x1080.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:  Text("Grid builder demo"),
    ),
      body: GridView.builder(itemCount: img.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 4.0,mainAxisSpacing: 4.0),
          itemBuilder: (BuildContext, int index) {
            return Center(
              child: Container(height: 200,color: Colors.yellow,child: Column(children: [
                Image(image: AssetImage(img[index])),

              ],),),
            );
          },
      ),

    );
  }
}
