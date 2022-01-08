import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sentimental_analyst/models/services.dart';
import 'package:sentimental_analyst/user_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final Future<FirebaseApp> _initialization = Firebase.initializeApp();
    // return FutureBuilder(
    //     future: _initialization,
    //     builder: (context, snapshot)
    // {
    //   if (snapshot.connectionState == ConnectionState.waiting) {
        //   return MaterialApp(
        //     debugShowCheckedModeBanner: false,
        //     home: Scaffold(
        //       body: Center(
        //         child: Center(
        //           child: CircularProgressIndicator(),
        //         ),
        //       ),
        //     ),
        //   );
        // } else if (snapshot.hasError) {
        //   return MaterialApp(
        //     debugShowCheckedModeBanner: false,
        //     home: Scaffold(
        //       body: Center(
        //         child: Center(
        //           child: Text('an error has been occurred'),
        //         ),
        //       ),
        //     ),
        //   );
        // }

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
            home: UserState(),

          ),
        );
        // });
      }

}
