
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
   
  const SecondPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
        backgroundColor: Colors.deepPurple[300],
      ),
      backgroundColor: Colors.green[200],
      body: const Center(
         child: Text('S E C O N D   P A G E'),
      ),
    );
  }
}