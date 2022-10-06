import 'package:flutter/material.dart';
import 'package:untitled1/home_page.dart';
import 'package:untitled1/login_page.dart';


class OnBording extends StatefulWidget {
  const OnBording({Key? key}) : super(key: key);

  @override
  State<OnBording> createState() => _OnBordingState();
}

class _OnBordingState extends State<OnBording> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(18, 40, 18, 24),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
              child:Image(image: AssetImage('assets/Group 6.jpg')),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: Image(image: AssetImage('assets/ramenbesar.jpg')),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: Text('All your\nfavourite ramen', style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold
              ), textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: Text('Delicious as is or tossed with your\nfavourite ingredients',
              textAlign: TextAlign.center,),
            ),

            Expanded(child: Container()),

            Align(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return LoginScreen();
                  }));
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)
                      )
                    ),
                    child: Text('Sign in')),
              ),
            ),
            Align(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Home();
                  }));
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)
                      )
                    ),
                    child: Text('Login')),
              ),
            )
          ],
        ),
      ),
    );
  }
}

