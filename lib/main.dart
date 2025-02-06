// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:hackathonproject/screens/login_screen.dart';
// import 'package:hackathonproject/screens/signup_screen.dart'; // Correct import
// import 'package:hackathonproject/screens/home_screen.dart'; // Correct import
// import 'services/auth_service.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (_) => AuthService(),
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: Consumer<AuthService>(
//           builder: (context, authService, _) {
//             if (authService.token != null) {
//               return HomeScreen(); // Now HomeScreen is defined and imported correctly
//             } else {
//               return LoginScreen();
//             }
//           },
//         ),
//         routes: {
//           '/signup': (context) => SignupScreen(),
//           '/home': (context) => HomeScreen(), // Correct HomeScreen import
//         },
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hackathonproject/screens/login_screen.dart';
import 'package:hackathonproject/screens/signup_screen.dart'; // Correct import
import 'package:hackathonproject/screens/home_screen.dart'; // Correct import
import 'package:hackathonproject/screens/introduction_screen.dart'; // Import the intro screen
import 'services/auth_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AuthService(),
      child: MaterialApp(
        title: 'Hackathon Project',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Consumer<AuthService>(
          builder: (context, authService, _) {
            if (authService.token != null) {
              return HomeScreen(); // Navigate to HomeScreen if logged in
            } else {
              return IntroductionScreen(); // Show intro screen first
            }
          },
        ),
        routes: {
          '/signup': (context) => SignupScreen(),
          '/home': (context) => HomeScreen(),
        },
      ),
    );
  }
}
