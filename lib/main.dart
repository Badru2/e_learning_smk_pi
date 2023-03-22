import 'package:e_learning_smk_pi/screens/admin/login/login_screen.dart';
import 'package:e_learning_smk_pi/screens/guru/tugas/tugas_screen.dart';
import 'package:e_learning_smk_pi/screens/murid/homescreen/homescreen.dart';
import 'package:e_learning_smk_pi/widgets/navbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/murid/login/login_screen.dart';

// void main() => runApp(const MyApp());
// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();

//   runApp(const MyApp());
// }
void main() {
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      // home: StreamBuilder<User?>(
      //   stream: FirebaseAuth.instance.authStateChanges(),
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return const Center(child: CircularProgressIndicator());
      //     } else if (snapshot.hasError) {
      //       return const Center(child: Text('Ada yang salah'));
      //     } else if (snapshot.hasData) {
      //       return const Navbar();
      //     } else {
      //       return const LoginScreen();
      //     }
      //   },
      // ),
      home: TambahTugasScreenGuru(),
    );
  }
}
