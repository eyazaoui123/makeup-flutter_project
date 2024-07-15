import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper/helper_functions.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/signup.dart';
import 'package:flutter_application_1/shared/constants.dart';
import 'package:flutter_application_1/shared/textfield.dart';

class Login extends StatefulWidget {
  
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
   TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
void login() async {
    //show loading circle
    showDialog(context: context, builder: (context)=>Center(
      child: CircularProgressIndicator(),
    ));
    //try sign in
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text);
//pop loading circle
Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );;

    }
          //display any errors
    on FirebaseAuthException catch(e){
      //pop loading circle
Navigator.pop(context);
displayMsgToUser(e.code, context);
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
      MyTextField(TextInputTypee: TextInputType.emailAddress, isPassword: false, hintTextt: "Enter your email:",c: emailController,)    ,            
        SizedBox(height: 20,),
      MyTextField(TextInputTypee: TextInputType.text, isPassword: true, hintTextt: "Enter your password:",c: passwordController,)    ,
        SizedBox(height: 20,),
      ElevatedButton(
         onPressed: (){login();},
         style: ButtonStyle(
       backgroundColor: MaterialStateProperty.all(BTNred),
       padding: MaterialStateProperty.all(EdgeInsets.all(12)),
       shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        ),
         child: Text("Sign in", style: TextStyle(fontSize: 19,color: Colors.white),),
      ),         
      Row(mainAxisAlignment: MainAxisAlignment.center,children: [
        
        Text("you don't have an account?"),
        TextButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignUp()));}, child: Text("sign up",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),))
      ],)   
              ],
            ),
          ),
        ),
      ),
    );
  }
}
