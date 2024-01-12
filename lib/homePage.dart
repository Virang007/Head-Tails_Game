import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int HeadTail = 7;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 98, 239, 237),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             SizedBox(height: 50,),
            Text("Heads OR Tails ?",style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10,),
            Image.asset("images/HEADTAIL$HeadTail.png",width: 200,height: 150,),
             SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(right: 35,left: 35),
              child: Divider(
              thickness: 1,
                color: Colors.black
              ),
            ), SizedBox(height: 20,),
            TextButton(onPressed: (){
              setState(() {
                HeadTail = Random().nextInt(5) + 1;
              });
            }, child: Image.asset("images/coin.png",width: 200,height: 150,)),
            SizedBox(height: 10,),
            Text("Tap Hand To Flip Coin",style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            TextButton(onPressed: (){
              setState(() {
                HeadTail = 7;
              });
            }, child:Text("Reset")),
          ],
        ),
      ),
    );
  }
}