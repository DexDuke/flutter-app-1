import 'package:flutter/material.dart';
import 'package:flutter_application_validation/styles/values.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: mainBackground,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'images/login.svg',
                  height: 0.2 * height,
                  width: 0.4 * width,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 0.20 * width, right: 0.20 * width),
                  child: const Text(
                    "Good to see you again!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Gabarito_Semibold',
                        fontSize: 15,
                        color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 0.20 * width,
                      right: 0.20 * width,
                      top: 0.009 * height),
                  child: const Text(
                    "Let's jump to Login",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Gabarito_Semibold', fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: 0.05 * height,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 0.1 * width,
                    right: 0.1 * width,
                    bottom: 0.02 * height,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 0, 221, 132)),
                      ),
                      prefixIcon: const Icon(Icons.mail),
                      prefixIconColor: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 0.1 * width,
                    right: 0.1 * width,
                  ),
                  child: TextField(
                    obscureText: !isPasswordVisible,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 0, 221, 132)),
                      ),
                      prefixIcon: const Icon(Icons.key),
                      prefixIconColor: Colors.black,
                      suffixIcon: IconButton(
                        icon: Icon(
                          isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 0.1 * width,
                    right: 0.1 * width,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle button click here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 0, 0, 0),
                      elevation: 8,
                      minimumSize: Size(
                        double
                            .infinity, // Make the button as wide as the parent container
                        0.06 * height, // Match the height of text fields
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gabarito_Semibold'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.01 * height,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not registered yet?"),
                    TextButton(
                      onPressed: null,
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: Color.fromARGB(255, 3, 66, 255),
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
