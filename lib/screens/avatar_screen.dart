import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Avatars'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 5),
            child: CircleAvatar(
              child: Text('LC'),
              backgroundColor: Colors.black,
            ),
          )
        ],
      ),
      body: const Center(
         child:  CircleAvatar(
          maxRadius: 100,
          backgroundImage:   NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgR288S96F5SaKYLnQaxAHc3fcAi-8DTZz_A&usqp=CAU'),
         ),
      ),
    );
  }
}