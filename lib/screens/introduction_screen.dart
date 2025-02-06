// import 'package:flutter/material.dart';
// import 'package:hackathonproject/screens/login_screen.dart';
// import 'package:hackathonproject/screens/signup_screen.dart'; // Import the signup screen for the next flow
//
// class IntroductionScreen extends StatefulWidget {
//   @override
//   _IntroductionScreenState createState() => _IntroductionScreenState();
// }
//
// class _IntroductionScreenState extends State<IntroductionScreen> {
//   final PageController _pageController = PageController();
//   int _currentPage = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           PageView(
//             controller: _pageController,
//             onPageChanged: (index) {
//               setState(() {
//                 _currentPage = index;
//               });
//             },
//             children: [
//               _buildPage(
//                 title: 'Welcome to the App',
//                 description: 'Discover new features and enjoy the experience.',
//                 image: Icons.home,
//               ),
//               _buildPage(
//                 title: 'Stay Connected',
//                 description: 'Keep in touch with your friends and community.',
//                 image: Icons.people,
//               ),
//               _buildPage(
//                 title: 'Get Started',
//                 description: 'Sign up to start your journey with us.',
//                 image: Icons.start,
//               ),
//             ],
//           ),
//           _buildSkipButton(),
//           _buildNextButton(),
//         ],
//       ),
//     );
//   }
//
//   // Build each individual page of the introduction
//   Widget _buildPage({required String title, required String description, required IconData image}) {
//     return Padding(
//       padding: const EdgeInsets.all(24.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Icon(image, size: 120, color: Colors.blueAccent),
//           SizedBox(height: 30),
//           Text(
//             title,
//             style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 20),
//           Text(
//             description,
//             style: TextStyle(fontSize: 16, color: Colors.black54),
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }
//
//   // Skip Button
//   Widget _buildSkipButton() {
//     return Positioned(
//       left: 20,
//       bottom: 30,
//       child: TextButton(
//         onPressed: () {
//           Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(builder: (context) => LoginScreen()), // Skip to login screen
//           );
//         },
//         child: Text('Skip', style: TextStyle(fontSize: 18, color: Colors.blueAccent)),
//       ),
//     );
//   }
//
//   // Next Button
//   Widget _buildNextButton() {
//     return Positioned(
//       right: 20,
//       bottom: 30,
//       child: TextButton(
//         onPressed: () {
//           if (_currentPage == 2) {
//             Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(builder: (context) => LoginScreen()), // Go to Login screen after last page
//             );
//           } else {
//             _pageController.nextPage(
//               duration: Duration(milliseconds: 300),
//               curve: Curves.easeIn,
//             );
//           }
//         },
//         child: Text(
//           _currentPage == 2 ? 'Start' : 'Next',
//           style: TextStyle(fontSize: 18, color: Colors.blueAccent),
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:hackathonproject/screens/login_screen.dart';
// import 'package:hackathonproject/screens/signup_screen.dart'; // Import the signup screen for the next flow
//
// class IntroductionScreen extends StatefulWidget {
//   @override
//   _IntroductionScreenState createState() => _IntroductionScreenState();
// }
//
// class _IntroductionScreenState extends State<IntroductionScreen> {
//   final PageController _pageController = PageController();
//   int _currentPage = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           PageView(
//             controller: _pageController,
//             onPageChanged: (index) {
//               setState(() {
//                 _currentPage = index;
//               });
//             },
//             children: [
//               _buildPage(
//                 title: 'Welcome to the App',
//                 description: 'Discover new features and enjoy the experience.',
//                 imageUrl: 'https://www.shutterstock.com/image-photo/theres-nobody-like-study-buddy-260nw-2170156473.jpg', // Replace with your image URL
//               ),
//               _buildPage(
//                 title: 'Stay Connected',
//                 description: 'Keep in touch with your friends and community.',
//                 imageUrl: 'https://successfulstudyskills4students.com/wp-content/uploads/2023/01/pexels-photo-1595391-768x512.webp', // Replace with your image URL
//               ),
//               _buildPage(
//                 title: 'Get Started',
//                 description: 'Sign up to start your journey with us.',
//                 imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb8drw4V1MuqEhb9pTpo4f3fC-ImTqfOgtJ0JTPmRrCaUmpcgkw4XjglsA3A8mR1w-W8g&usqp=CAU', // Replace with your image URL
//               ),
//             ],
//           ),
//           _buildSkipButton(),
//           _buildNextButton(),
//         ],
//       ),
//     );
//   }
//
//   // Build each individual page of the introduction
//   Widget _buildPage({required String title, required String description, required String imageUrl}) {
//     return Padding(
//       padding: const EdgeInsets.all(24.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // Image instead of Icon
//           Image.network(
//             imageUrl,
//             height: 250, // Adjust the height as needed
//             width: 250, // Adjust the width as needed
//             fit: BoxFit.cover, // Ensures the image fills the given space
//           ),
//           SizedBox(height: 30),
//           Text(
//             title,
//             style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 20),
//           Text(
//             description,
//             style: TextStyle(fontSize: 16, color: Colors.black54),
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }
//
//   // Skip Button
//   Widget _buildSkipButton() {
//     return Positioned(
//       left: 20,
//       bottom: 30,
//       child: TextButton(
//         onPressed: () {
//           Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(builder: (context) => LoginScreen()), // Skip to login screen
//           );
//         },
//         child: Text('Skip', style: TextStyle(fontSize: 18, color: Colors.blueAccent)),
//       ),
//     );
//   }
//
//   // Next Button
//   Widget _buildNextButton() {
//     return Positioned(
//       right: 20,
//       bottom: 30,
//       child: TextButton(
//         onPressed: () {
//           if (_currentPage == 2) {
//             Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(builder: (context) => LoginScreen()), // Go to Login screen after last page
//             );
//           } else {
//             _pageController.nextPage(
//               duration: Duration(milliseconds: 300),
//               curve: Curves.easeIn,
//             );
//           }
//         },
//         child: Text(
//           _currentPage == 2 ? 'Start' : 'Next',
//           style: TextStyle(fontSize: 18, color: Colors.blueAccent),
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:hackathonproject/screens/login_screen.dart';
// import 'package:hackathonproject/screens/signup_screen.dart';
//
// class IntroductionScreen extends StatefulWidget {
//   @override
//   _IntroductionScreenState createState() => _IntroductionScreenState();
// }
//
// class _IntroductionScreenState extends State<IntroductionScreen> {
//   final PageController _pageController = PageController();
//   int _currentPage = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               Color(0xFF6B5B95),
//               Color(0xFF2E3192),
//               Color(0xFF1BFFFF),
//             ],
//           ),
//         ),
//         child: Stack(
//           children: [
//             PageView(
//               controller: _pageController,
//               onPageChanged: (index) {
//                 setState(() {
//                   _currentPage = index;
//                 });
//               },
//               children: [
//                 _buildPage(
//                   title: 'Welcome to the App',
//                   description: 'Discover new features and enjoy the experience.',
//                   imageUrl: 'https://media.istockphoto.com/id/629189720/photo/group-of-young-people-sitting-at-table-reading-books.jpg?s=612x612&w=0&k=20&c=HMq0Z5KVpDdt7EShPZQ62U_oJFcgUFsTRbPWu2aJyEY=',
//                 ),
//                 _buildPage(
//                   title: 'Stay Connected',
//                   description: 'Keep in touch with your friends and community.',
//                   imageUrl: 'https://i2.wp.com/eprojecttopics.com/wp-content/uploads/2023/05/Study_in_group_in_the_HHS_library.jpg?resize=600%2C420&ssl=1',
//                 ),
//                 _buildPage(
//                   title: 'Get Started',
//                   description: 'Sign up to start your journey with us.',
//                   imageUrl: 'https://thumbs.dreamstime.com/b/university-students-study-group-project-laptop-college-collaboration-outdoor-young-people-diversity-communication-322973678.jpg',
//                 ),
//               ],
//             ),
//             _buildSkipButton(),
//             _buildNextButton(),
//             Positioned(
//               bottom: 70,
//               left: 0,
//               right: 0,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: List.generate(3, (index) => _buildPageIndicator(index)),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildPage({required String title, required String description, required String imageUrl}) {
//     return Padding(
//       padding: const EdgeInsets.all(24.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Transform(
//             transform: Matrix4.identity()
//               ..setEntry(3, 2, 0.002)
//               ..rotateY(0.1),
//             alignment: Alignment.center,
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.3),
//                     blurRadius: 20,
//                     spreadRadius: 2,
//                     offset: Offset(5, 5),
//                   ),
//                 ],
//               ),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(20),
//                 child: Image.network(
//                   imageUrl,
//                   height: 250,
//                   width: 250,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 40),
//           Transform(
//             transform: Matrix4.translationValues(0, 0, 20),
//             child: Text(
//               title,
//               style: TextStyle(
//                 fontSize: 32,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//                 shadows: [
//                   Shadow(
//                     color: Colors.black.withOpacity(0.3),
//                     blurRadius: 10,
//                     offset: Offset(2, 2),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 20),
//           Text(
//             description,
//             style: TextStyle(
//               fontSize: 16,
//               color: Colors.white.withOpacity(0.9),
//               height: 1.4,
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildPageIndicator(int index) {
//     return AnimatedContainer(
//       duration: Duration(milliseconds: 300),
//       margin: EdgeInsets.symmetric(horizontal: 6),
//       height: 10,
//       width: _currentPage == index ? 24 : 12,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         gradient: _currentPage == index
//             ? LinearGradient(
//           colors: [Color(0xFF00FFFF), Color(0xFF2E3192)],
//         )
//             : LinearGradient(
//           colors: [Colors.white.withOpacity(0.4), Colors.white.withOpacity(0.2)],
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.2),
//             blurRadius: 6,
//             offset: Offset(2, 2),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildSkipButton() {
//     return Positioned(
//       left: 20,
//       bottom: 30,
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//           backgroundColor: Colors.transparent,
//           shadowColor: Colors.black,
//           elevation: 8,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30),
//           ),
//         ),
//         onPressed: () {
//           Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(builder: (context) => LoginScreen()),
//           );
//         },
//         child: Text(
//           'Skip',
//           style: TextStyle(
//             fontSize: 18,
//             color: Colors.white,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildNextButton() {
//     return Positioned(
//       right: 20,
//       bottom: 30,
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(30),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.blueAccent.withOpacity(0.4),
//               blurRadius: 10,
//               spreadRadius: 2,
//               offset: Offset(2, 2),
//             ),
//           ],
//         ),
//         child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
//             backgroundColor: Colors.blueAccent,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(30),
//             ),
//           ),
//           onPressed: () {
//             if (_currentPage == 2) {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(builder: (context) => LoginScreen()),
//               );
//             } else {
//               _pageController.nextPage(
//                 duration: Duration(milliseconds: 500),
//                 curve: Curves.easeInOut,
//               );
//             }
//           },
//           child: Text(
//             _currentPage == 2 ? 'Start' : 'Next',
//             style: TextStyle(
//               fontSize: 18,
//               color: Colors.white,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:hackathonproject/screens/login_screen.dart';
import 'package:hackathonproject/screens/signup_screen.dart';

class IntroductionScreen extends StatefulWidget {
  @override
  _IntroductionScreenState createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF6B5B95),
              Color(0xFF2E3192),
              Color(0xFF1BFFFF),
            ],
          ),
        ),
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                _buildPage(
                  title: 'Welcome to the App',
                  description: 'Discover new features and enjoy the experience.',
                  imageUrl: 'https://media.istockphoto.com/id/629189720/photo/group-of-young-people-sitting-at-table-reading-books.jpg?s=612x612&w=0&k=20&c=HMq0Z5KVpDdt7EShPZQ62U_oJFcgUFsTRbPWu2aJyEY=',
                ),
                _buildPage(
                  title: 'Stay Connected',
                  description: 'Keep in touch with your friends and community.',
                  imageUrl: 'https://i2.wp.com/eprojecttopics.com/wp-content/uploads/2023/05/Study_in_group_in_the_HHS_library.jpg?resize=600%2C420&ssl=1',
                ),
                _buildPage(
                  title: 'Get Started',
                  description: 'Sign up to start your journey with us.',
                  imageUrl: 'https://thumbs.dreamstime.com/b/university-students-study-group-project-laptop-college-collaboration-outdoor-young-people-diversity-communication-322973678.jpg',
                ),
              ],
            ),
            _buildSkipButton(),
            _buildNextButton(),
            Positioned(
              bottom: 70,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) => _buildPageIndicator(index)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPage({required String title, required String description, required String imageUrl}) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.002)
              ..rotateY(0.1),
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 20,
                    spreadRadius: 2,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Image.network(
                      imageUrl,
                      height: 250,
                      width: 250,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.black.withOpacity(0.5), Colors.transparent],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          Transform(
            transform: Matrix4.translationValues(0, 0, 20),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 10,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            description,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white.withOpacity(0.9),
              height: 1.4,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildPageIndicator(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 6),
      height: 10,
      width: _currentPage == index ? 24 : 12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: _currentPage == index
            ? LinearGradient(
          colors: [Color(0xFF00FFFF), Color(0xFF2E3192)],
        )
            : LinearGradient(
          colors: [Colors.white.withOpacity(0.4), Colors.white.withOpacity(0.2)],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 6,
            offset: Offset(2, 2),
          ),
        ],
      ),
    );
  }

  Widget _buildSkipButton() {
    return Positioned(
      left: 20,
      bottom: 30,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.black,
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        child: Text(
          'Skip',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _buildNextButton() {
    return Positioned(
      right: 20,
      bottom: 30,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.cyanAccent],
          ),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.blueAccent.withOpacity(0.4),
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: () {
            if (_currentPage == 2) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            } else {
              _pageController.nextPage(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            }
          },
          child: Text(
            _currentPage == 2 ? 'Start' : 'Next',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
