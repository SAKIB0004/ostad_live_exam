import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Need Blood',
      debugShowCheckedModeBanner: false,
      home: NeedBloodPage(),
    );
  }
}

class NeedBloodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Need Blood',
          style: TextStyle(
              color:Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.white,
            onPressed: () {
              // Add functionality here
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.grey.shade600,
                  child: Icon(
                    Icons.bloodtype_outlined,
                    size: 60,
                    color: Colors.red,
                  ),
                ),
                SizedBox(height: 10,),
                Text("Donate Blood",style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
          ],
        ),
      ),
      //backgroundColor: Colors.grey[100],
    );
  }
}
