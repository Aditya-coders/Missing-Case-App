// // //
// // // import 'package:flutter/material.dart';
// // // import 'package:provider/provider.dart';
// // // import '../services/auth_service.dart';
// // //
// // // class SignupScreen extends StatelessWidget {
// // //   final TextEditingController nameController = TextEditingController();
// // //   final TextEditingController emailController = TextEditingController();
// // //   final TextEditingController passwordController = TextEditingController();
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final authService = Provider.of<AuthService>(context);
// // //
// // //     return Scaffold(
// // //       appBar: AppBar(title: Text('Sign Up')),
// // //       body: Padding(
// // //         padding: const EdgeInsets.all(16.0),
// // //         child: Column(
// // //           children: [
// // //             TextField(
// // //               controller: nameController,
// // //               decoration: InputDecoration(labelText: 'Name'),
// // //             ),
// // //             TextField(
// // //               controller: emailController,
// // //               decoration: InputDecoration(labelText: 'Email'),
// // //             ),
// // //             TextField(
// // //               controller: passwordController,
// // //               decoration: InputDecoration(labelText: 'Password'),
// // //               obscureText: true,
// // //             ),
// // //             SizedBox(height: 20),
// // //             ElevatedButton(
// // //               onPressed: () async {
// // //                 final token = await authService.signup(
// // //                   nameController.text,
// // //                   emailController.text,
// // //                   passwordController.text,
// // //                 );
// // //                 if (token != null) {
// // //                   Navigator.pushReplacementNamed(context, '/home');
// // //                 } else {
// // //                   ScaffoldMessenger.of(context).showSnackBar(
// // //                     SnackBar(content: Text('Sign Up Failed')),
// // //                   );
// // //                 }
// // //               },
// // //               child: Text('Sign Up'),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// //
// //
// //
// //
// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// // import '../services/auth_service.dart';
// //
// // class SignupScreen extends StatelessWidget {
// //   final TextEditingController nameController = TextEditingController();
// //   final TextEditingController emailController = TextEditingController();
// //   final TextEditingController passwordController = TextEditingController();
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     final authService = Provider.of<AuthService>(context);
// //
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Sign Up'),
// //         backgroundColor: Colors.deepPurple,
// //       ),
// //       backgroundColor: Colors.deepPurple[50],
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             // Name Input Field with 3D effect
// //             _buildTextField(
// //               controller: nameController,
// //               label: 'Name',
// //             ),
// //             SizedBox(height: 16),
// //
// //             // Email Input Field with 3D effect
// //             _buildTextField(
// //               controller: emailController,
// //               label: 'Email',
// //             ),
// //             SizedBox(height: 16),
// //
// //             // Password Input Field with 3D effect
// //             _buildTextField(
// //               controller: passwordController,
// //               label: 'Password',
// //               obscureText: true,
// //             ),
// //             SizedBox(height: 20),
// //
// //             // Sign Up Button with 3D effect
// //             _buildElevatedButton(
// //               context,
// //               onPressed: () async {
// //                 final token = await authService.signup(
// //                   nameController.text,
// //                   emailController.text,
// //                   passwordController.text,
// //                 );
// //                 if (token != null) {
// //                   Navigator.pushReplacementNamed(context, '/home');
// //                 } else {
// //                   ScaffoldMessenger.of(context).showSnackBar(
// //                     SnackBar(content: Text('Sign Up Failed')),
// //                   );
// //                 }
// //               },
// //               text: 'Sign Up',
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// //
// //   // Custom method to create the text fields with 3D effects
// //   Widget _buildTextField({
// //     required TextEditingController controller,
// //     required String label,
// //     bool obscureText = false,
// //   }) {
// //     return Container(
// //       decoration: BoxDecoration(
// //         borderRadius: BorderRadius.circular(15),
// //         boxShadow: [
// //           BoxShadow(
// //             color: Colors.black.withOpacity(0.1),
// //             blurRadius: 10,
// //             offset: Offset(0, 10),
// //           ),
// //         ],
// //       ),
// //       child: TextField(
// //         controller: controller,
// //         obscureText: obscureText,
// //         decoration: InputDecoration(
// //           labelText: label,
// //           labelStyle: TextStyle(color: Colors.deepPurple),
// //           filled: true,
// //           fillColor: Colors.white,
// //           border: OutlineInputBorder(
// //             borderRadius: BorderRadius.circular(15),
// //             borderSide: BorderSide.none,
// //           ),
// //           contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
// //         ),
// //       ),
// //     );
// //   }
// //
// //   // Custom method for ElevatedButton with 3D effect
// //   Widget _buildElevatedButton(
// //       BuildContext context, {
// //         required VoidCallback onPressed,
// //         required String text,
// //       }) {
// //     return Container(
// //       decoration: BoxDecoration(
// //         borderRadius: BorderRadius.circular(15),
// //         boxShadow: [
// //           BoxShadow(
// //             color: Colors.deepPurple.withOpacity(0.3),
// //             blurRadius: 8,
// //             offset: Offset(0, 4),
// //           ),
// //         ],
// //       ),
// //       child: ElevatedButton(
// //         onPressed: onPressed,
// //         style: ElevatedButton.styleFrom(
// //           backgroundColor: Colors.deepPurple,
// //           padding: EdgeInsets.symmetric(vertical: 14, horizontal: 40),
// //           shape: RoundedRectangleBorder(
// //             borderRadius: BorderRadius.circular(15),
// //           ),
// //         ),
// //         child: Text(
// //           text,
// //           style: TextStyle(fontSize: 16, color: Colors.white),
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//
//
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../services/auth_service.dart';
//
// class SignupScreen extends StatelessWidget {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     final authService = Provider.of<AuthService>(context);
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sign Up'),
//         backgroundColor: Colors.deepPurple,
//         elevation: 10,
//       ),
//       backgroundColor: Colors.deepPurple[50],
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Animated Name Input Field with 3D effect
//             _buildTextField(
//               controller: nameController,
//               label: 'Name',
//             ),
//             SizedBox(height: 16),
//
//             // Animated Email Input Field with 3D effect
//             _buildTextField(
//               controller: emailController,
//               label: 'Email',
//             ),
//             SizedBox(height: 16),
//
//             // Animated Password Input Field with 3D effect
//             _buildTextField(
//               controller: passwordController,
//               label: 'Password',
//               obscureText: true,
//             ),
//             SizedBox(height: 20),
//
//             // Beautiful Sign Up Button with 3D effect
//             _buildElevatedButton(
//               context,
//               onPressed: () async {
//                 final token = await authService.signup(
//                   nameController.text,
//                   emailController.text,
//                   passwordController.text,
//                 );
//                 if (token != null) {
//                   Navigator.pushReplacementNamed(context, '/home');
//                 } else {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text('Sign Up Failed')),
//                   );
//                 }
//               },
//               text: 'Sign Up',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // Custom method to create the text fields with 3D effects
//   Widget _buildTextField({
//     required TextEditingController controller,
//     required String label,
//     bool obscureText = false,
//   }) {
//     return AnimatedContainer(
//       duration: Duration(milliseconds: 300),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(25),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.deepPurple.withOpacity(0.2),
//             blurRadius: 15,
//             offset: Offset(0, 10),
//           ),
//         ],
//       ),
//       child: TextField(
//         controller: controller,
//         obscureText: obscureText,
//         style: TextStyle(color: Colors.deepPurple),
//         decoration: InputDecoration(
//           labelText: label,
//           labelStyle: TextStyle(color: Colors.deepPurple),
//           filled: true,
//           fillColor: Colors.white,
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(25),
//             borderSide: BorderSide.none,
//           ),
//           contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//         ),
//       ),
//     );
//   }
//
//   // Custom method for ElevatedButton with 3D effect
//   Widget _buildElevatedButton(
//       BuildContext context, {
//         required VoidCallback onPressed,
//         required String text,
//       }) {
//     return AnimatedContainer(
//       duration: Duration(milliseconds: 200),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(25),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.deepPurple.withOpacity(0.3),
//             blurRadius: 15,
//             offset: Offset(0, 4),
//           ),
//         ],
//       ),
//       child: ElevatedButton(
//         onPressed: onPressed,
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.deepPurple,
//           padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(25),
//           ),
//           elevation: 10,
//         ),
//         child: Text(
//           text,
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/auth_service.dart';

class SignupScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.deepPurple.shade900, Colors.indigo.shade900],
          ),
        ),
        child: Stack(
          children: [
            // Floating 3D Spheres Background
            Positioned(
              top: screenHeight * 0.1,
              left: -50,
              child: _FloatingSphere(
                size: 120,
                color: Colors.purpleAccent.withOpacity(0.2),
              ),
            ),
            Positioned(
              top: screenHeight * 0.3,
              right: -30,
              child: _FloatingSphere(
                size: 80,
                color: Colors.blueAccent.withOpacity(0.2),
              ),
            ),

            CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 70,
                  collapsedHeight: 100,
                  floating: true,
                  flexibleSpace: FlexibleSpaceBar(
                    title: ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(
                        colors: [Colors.purpleAccent, Colors.blueAccent],
                      ).createShader(bounds),
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              color: Colors.black,
                              offset: Offset(2, 2),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                      ),
                    ),
                    background: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.purpleAccent.withOpacity(0.1),
                            Colors.blueAccent.withOpacity(0.1)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      children: [
                        // Animated Form Elements
                        _AnimatedFormElement(
                          delay: 0,
                          child: _buildTextField(
                            controller: nameController,
                            label: 'Full Name',
                            icon: Icons.person,
                          ),
                        ),
                        SizedBox(height: 24),
                        _AnimatedFormElement(
                          delay: 0.2,
                          child: _buildTextField(
                            controller: emailController,
                            label: 'Email Address',
                            icon: Icons.email,
                          ),
                        ),
                        SizedBox(height: 24),
                        _AnimatedFormElement(
                          delay: 0.4,
                          child: _buildTextField(
                            controller: passwordController,
                            label: 'Password',
                            icon: Icons.lock,
                            obscureText: true,
                          ),
                        ),
                        SizedBox(height: 40),

                        // 3D Signup Button
                        _buildElevatedButton(
                          context,
                          onPressed: () async {
                            final token = await authService.signup(
                              nameController.text,
                              emailController.text,
                              passwordController.text,
                            );
                            if (token != null) {
                              Navigator.pushReplacementNamed(context, '/home');
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Sign Up Failed'),
                                  backgroundColor: Colors.redAccent,
                                  behavior: SnackBarBehavior.floating,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              );
                            }
                          },
                          text: 'Get Started',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    bool obscureText = false,
  }) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateX(0.1),
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 20,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            prefixIcon: ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [Colors.purpleAccent, Colors.blueAccent],
              ).createShader(bounds),
              child: Icon(icon, color: Colors.white),
            ),
            labelText: label,
            labelStyle: TextStyle(color: Colors.white70),
            filled: true,
            fillColor: Colors.black.withOpacity(0.3),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 24),
          ),
        ),
      ),
    );
  }

  Widget _buildElevatedButton(
      BuildContext context, {
        required VoidCallback onPressed,
        required String text,
      }) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateX(0.1),
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.blueAccent.withOpacity(0.5),
              blurRadius: 20,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          child: Ink(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purpleAccent, Colors.blueAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16),
              alignment: Alignment.center,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  shadows: [
                    Shadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: Offset(2, 2),
                      blurRadius: 4,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _FloatingSphere extends StatefulWidget {
  final double size;
  final Color color;

  const _FloatingSphere({required this.size, required this.color});

  @override
  __FloatingSphereState createState() => __FloatingSphereState();
}

class __FloatingSphereState extends State<_FloatingSphere>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _controller.value * 40),
          child: child,
        );
      },
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [
              widget.color.withOpacity(0.8),
              widget.color.withOpacity(0.1),
            ],
          ),
        ),
      ),
    );
  }
}

class _AnimatedFormElement extends StatefulWidget {
  final Widget child;
  final double delay;

  const _AnimatedFormElement({required this.child, required this.delay});

  @override
  __AnimatedFormElementState createState() => __AnimatedFormElementState();
}

class __AnimatedFormElementState extends State<_AnimatedFormElement>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );

    _offsetAnimation = Tween<Offset>(
      begin: Offset(widget.delay * 2, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack,
    ));

    Future.delayed(Duration(milliseconds: (widget.delay * 400).toInt()), () {
      if (mounted) _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: FadeTransition(
        opacity: _controller,
        child: widget.child,
      ),
    );
  }
}




