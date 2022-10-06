import 'package:flutter/material.dart';
import 'package:untitled1/main.dart';
import 'package:untitled1/onbording_page.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<String> kumpulanGambar = [
      "Rectangle 2.jpg",
      "Rectangle 3.jpg",
      "Rectangle 4.jpg",
      "Rectangle 5.jpg",
      "Rectangle 6.jpg",
      "Rectangle 7.jpg",
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> OnBording()));
          },
            child: Icon(Icons.arrow_back, color: Colors.black,)),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: const Text('Home', style: TextStyle(color: Colors.black),),
        actions: <Widget> [
          IconButton(onPressed: (){}, icon: const Icon(Icons.notifications,
          color: Colors.black))
        ],
      ),
      body: Column(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 14)),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Search',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 10, 40, 10),
              child: Text('Top menu', style: TextStyle(
                  color: Colors.black45
              ),
              ),
            ),
            Expanded(child: GridView.builder(
              itemCount: kumpulanGambar.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2), itemBuilder: (context, i){
            return Padding(padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/${kumpulanGambar[i]}'),
            );
            },
            )
            )
          ],
        ),
      );
  }
}