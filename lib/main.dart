import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rlcesi/firebase_options.dart';
import 'package:rlcesi/pages/Authentication/VerifyEmailScreen.dart';
import 'package:rlcesi/pages/wrapper/wrapperAuthScreen.dart';
import 'package:rlcesi/pages/wrapper/wrapperHomeScreen.dart';

Future main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: 'AIzaSyASUZDrCZvytb0w6LPAfIvCR8frbsYUdKw',
      appId: '1:597163300495:web:befb0dc6df7bbb2e9142fa',
      messagingSenderId: '597163300495',
      projectId: 'rlcesi-bb20d',)
  );
  runApp(MyApp());
}
final navigatorKey = GlobalKey<NavigatorState>();
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Ressources Relationnelles',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage()
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.userChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          else if (snapshot.hasError) {
            return Center(child: Text('Désolé l\'application est indisponible pour le moment !'),);
          }
          else if (snapshot.hasData) {
            return WrapperHomeScreen(userUid : snapshot.data!.uid);
          } else {
            return WrapperAuthScreen();
          };
        },
      ),
  );
}
