import 'package:flutter/material.dart';
import 'package:untitled1/home_page.dart';
import 'package:untitled1/onbording_page.dart';
import 'package:untitled1/signin_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.fromLTRB(18, 40, 18, 24),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  padding: EdgeInsets.only(
                      left: 0
                  ),
                  alignment: Alignment.centerLeft,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context){
                          return OnBording();
                        }));
                  },
                  icon: Icon(Icons.arrow_back) ),
              Text('Welcome Back', style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold
              )),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 10, 40, 10),
                child: Text('Login to your account', style: TextStyle(
                    color: Colors.black45
                ),),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 40, 50, 10),
                child: Text('Email', style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 20, 50, 10),
                child: Text('Password', style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 20, 40, 10),
                child: Text("Forget password?", style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.orange
                ),
                ),
              ),

              Expanded(child: Container(

              )),
              //TextButton(onPressed: (){}, child: Text('Login')),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context){
                              return Home();
                            }));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Text('Login')
                      ,)),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account yet?", style: TextStyle(
                      color: Colors.black45
                  ),),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return SignIn();
                      }));
                    },
                    child: Text("Sign up", style: TextStyle(
                        color: Colors.orange
                    ),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}