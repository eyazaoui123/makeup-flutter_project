import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/auth.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/pages/CheckOut.dart';
import 'package:flutter_application_1/pages/details_screen.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/onboarding.dart';
import 'package:flutter_application_1/pages/signup.dart';
import 'package:flutter_application_1/provider/Cart.dart';
import 'package:flutter_application_1/utils/theme/theme.dart';
import 'package:provider/provider.dart';
void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {return Cart();},
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
      theme:TAppTheme.lightTheme ,
      darkTheme: TAppTheme.darkTheme,
        home:OnboardingScreen()// AuthPage(),
        
      ),
    );
  }
}