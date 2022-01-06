import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sentimental_analyst/models/services.dart';
import 'package:sentimental_analyst/modules/home.dart';
import 'package:sentimental_analyst/modules/user_state.dart';
import 'package:sentimental_analyst/modules/welcome_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                body: Center(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
            );
          }else if (snapshot.hasError){
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                body: Center(
                  child: Center(
                    child: Text('an error has been occurred'),
                  ),
                ),
              ),
            );
          }

          return MultiProvider(
            providers: [
              ChangeNotifierProvider<ApiGetter>(
                create: (context) => ApiGetter(),
              ),
            ],
            child: MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                home:  UserState()),
          );
    });
  }
}
