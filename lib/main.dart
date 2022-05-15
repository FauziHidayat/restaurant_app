import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Text('Restaurant',
                    style: TextStyle(
                      fontSize: 30,
                    )),
                SizedBox(height: 10),
                Text('Recomendation restauran for you!',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _buildItem extends StatelessWidget {
  const _buildItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Image.network(
            width: 100,
            height: 100,
            "https://img.theculturetrip.com/wp-content/uploads/2018/06/oku.jpg",
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Restaurant 1', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            SizedBox(height: 7),
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.red),
                SizedBox(width: 5),
                Text('st somewhere'),
              ],
            ),
            SizedBox(height: 7),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow),
                SizedBox(width: 5),
                Text('4.6'),
              ],
            ),
          ],
        )
      ],
    );
  }
}
