
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'homepage.dart';

//void main() => runApp(SocialMediaLoginApp());

class SocialMediaLoginApp extends StatelessWidget {
  const SocialMediaLoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height:60),
              const Text(
                "Lets sign you in",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                
              ),
              const Text(
                "Welcome back to cookify...",
                style: TextStyle(),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 40),
              const Text("Email",
              textAlign: TextAlign.left,),
              SizedBox(
                height: 30,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Enter Email",
                      contentPadding: const EdgeInsets.all(10),
                      hintStyle:
                          const TextStyle(color: Color.fromARGB(179, 158, 157, 157),fontSize:15),
                      filled: true,
                      fillColor: const Color.fromARGB(123, 157, 154, 154)),
                ),
              ),
              const SizedBox(height:20),
              const Text("Password"),
              SizedBox(
                height:30,
                child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      contentPadding: const EdgeInsets.all(10),
                      hintStyle: const TextStyle(color: Color.fromARGB(179, 158, 157, 157),fontSize:15),
                      filled:true,
                      fillColor: const Color.fromARGB(123, 157, 154, 154),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                      ),
                      
                    ),
              ),
              
              
              GestureDetector(
                onTap: () {  },
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Color.fromARGB(255, 15, 119, 204),
                    fontWeight:FontWeight.w500
                  ),
                  textAlign:TextAlign.right,
                        ),),
              const SizedBox(height:30),
              Center(
                child: SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    style:ElevatedButton.styleFrom(
                      backgroundColor:Colors.blue,
                    ),
                    onPressed: (){
                  
                    }, 
                    child: const Text("Sign in",
                    style:TextStyle(color: Colors.white))
                  ),
                ),
              ),
              const Text("or continue with",
              style:TextStyle(),
              textAlign: TextAlign.center,),
              const SizedBox(height:20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                SizedBox(width:80,child: ElevatedButton(onPressed:(){}, child:const Text("google")) ),
                SizedBox(width:80,child: ElevatedButton(onPressed: (){}, child: const Icon(Icons.apple))),
                SizedBox(width:80,child: ElevatedButton(onPressed: (){}, child: const Icon(Icons.facebook)))
              ],),
              const SizedBox(height: 100),

              const Center(child: Text("Don't have an account?")),
              Center(
                child: GestureDetector(
                  onTap: () {  },
                  child: const Text(
                    "Register Now",
                    style: TextStyle(
                      color: Color.fromARGB(255, 15, 119, 204),
                      fontWeight:FontWeight.w500
                    ),
                    ),),
              )

              

            ],
          ),
        )
        );
  }
}
