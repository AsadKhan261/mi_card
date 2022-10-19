import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home: FirstScreen(),
    );
  }
}





class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text('Mi Card'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images.jpeg'),fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(500),
                border: Border.all(color: Colors.white,width: 2),
              ),

            ),
          ),
          const SizedBox(height: 20,),
          const Text('John Doe',style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontFamily: 'Pacifico',
          ),),



          Container(
            height: 45,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.circular(8)
            ),
            child: Row(
              children: const [
                Icon(Icons.email,size: 18,),
                SizedBox(width: 10,),
                Text('johndo@gmail.com'),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 45,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)
            ),
            child: Row(
              children: const [
                Icon(Icons.phone),
                Text('+922712182818288')
              ],
            ),
          )
        ],
      ),
    );
  }
}
