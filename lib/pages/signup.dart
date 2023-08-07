import 'package:abc/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  bool changeButton = false;
  String _username = '';
  String _phoneNumber = '';
  String _password = '';
  String _confirmPassword = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Form is valid, perform sign up logic here
      // e.g., make an API request, save user data, etc.
      print('Username: $_username');
      print('Phone Number: $_phoneNumber');
      print('Password: $_password');
      print('Confirm Password: $_confirmPassword');
    }
  }

  moveToLogin() async {
    await Navigator.pushNamed(context, MyRoutes.loginRoute);
    print('object');
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color(0xFFF0EBE3),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                Image.asset(
                  'assets/images/appbar_Logo.png',
                  height: 120,
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'SIGN UP',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily:
                          GoogleFonts.poppinsTextTheme().bodySmall?.fontFamily,
                      letterSpacing: 2,
                      color: const Color(0xFF415A53)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 500.0),
                  child: Column(children: [
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Username'),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Phone'),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Password'),
                    ),
                    TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Confirm Password'),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(8.0),
                      color: const Color(0xFF415A53),
                      child: InkWell(
                        // splashColor: Colors.red[900],
                        onTap: () => moveToLogin(),
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          height: 43.0,
                          width: changeButton ? 200 : 700,
                          alignment: Alignment.center,
                          child: changeButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.poppinsTextTheme()
                                        .bodySmall
                                        ?.fontFamily,
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: 2,
                                    fontSize: 20.0,
                                    color: const Color(0xFFF0EBE3),
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ));
  }
}
