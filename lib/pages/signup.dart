import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper/helper_functions.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/shared/constants.dart';
import 'package:flutter_application_1/shared/textfield.dart';

class SignUp extends StatefulWidget {
  
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController usernameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();


void register() async{
   //show loading circle
showDialog(context: context, builder: (context) => const Center(
  child:CircularProgressIndicator(),
));
    //make sure passwords match
//try creating the user
    try{
      UserCredential? userCredential=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text);
    //pop loading circle
    Navigator.pop(context);
    }on FirebaseAuthException catch(e){
//pop loading circle
    Navigator.pop(context);

//display error message to user
displayMsgToUser(e.code, context);
    }
}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    MyTextField(TextInputTypee: TextInputType.emailAddress, isPassword: false, hintTextt: "Enter your username:",c:usernameController)    ,            
                      SizedBox(height: 20,),
                      MyTextField(TextInputTypee: TextInputType.emailAddress, isPassword: false, hintTextt: "Enter your email:",c: emailController,)    ,            
                      SizedBox(height: 20,),
                    MyTextField(TextInputTypee: TextInputType.text, isPassword: true, hintTextt: "Enter your password:",c: passwordController,)    ,
                      SizedBox(height: 20,),
                    ElevatedButton(
                       onPressed: (){register();},
                       style: ButtonStyle(
                     backgroundColor: MaterialStateProperty.all(BTNred),
                     padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                     shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                      ),
                       child: Text("Register", style: TextStyle(fontSize: 19,color: Colors.white),),
                    ),         
                    Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                      
                      Text("already have an account?"),
                      TextButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));}, child: Text("sign in",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),))
                    ],)   
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
