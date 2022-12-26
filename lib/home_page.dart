import 'package:flutter/material.dart';
import 'package:left_menu_page/first_page.dart';
import 'package:left_menu_page/second_page.dart';

class HomePage extends StatelessWidget {
   
  const HomePage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
         title: const Text('Home Page'),
         backgroundColor: Colors.deepPurple[300],
       ),
       drawer: Drawer(
          child : Container(
            color: Colors.deepPurple[100],
            child: ListView(
              children: [
                 const DrawerHeader(child: 
                    Center(child: Text ('L O G O', 
                      style: TextStyle(
                          fontSize: 30, 
                          color: Colors.black),))
                 ),
                 

                   ListTile (
                    leading: const Icon(Icons.home),
                    title: const Text(
                      'Home',
                      style: TextStyle(
                          fontSize: 20, 
                          color: Colors.black),
                          ),
                      onTap: () { 
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => const HomePage()));
                           },
                          ),

                  ListTile (
                    leading: const Icon(Icons.book),
                    title: const Text(
                      'Page 1',
                      style: TextStyle(
                          fontSize: 20, 
                          color: Colors.black),
                          ),
                      onTap: () { 
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => const FirstPage()));
                           },
                          ),

                  ListTile (
                    leading: const Icon(Icons.add_box),
                    title: const Text(
                      'Page 2',
                      style: TextStyle(
                          fontSize: 20, 
                          color: Colors.black),
                          ),
                      onTap: () { 
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => const SecondPage()));
                           },
                          ),

                  
              ],
            ),
          )
       ),
    );
  }
}