import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/routes.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool isbold = false;
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? false) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  moveToSignUp() async {
    await Future.delayed((Duration(seconds: 1)));
    await Navigator.pushNamed(context, MyRoutes.signupRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF0EBE3),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/LOGO.png',
                  height: 350.0,
                ),
                Text(
                  'Welcome $name',
                  style: TextStyle(
                    color: const Color(0xFF415A53),
                    fontFamily:
                        GoogleFonts.poppinsTextTheme().bodySmall?.fontFamily,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w200,
                    letterSpacing: 2.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 500.0),
                  child: Column(children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return "password cannot be empty";
                        } else if ((value?.length ?? 0) <= 6) {
                          return "Password should be greater than 6 characters";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 80.0,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(8.0),
                      color: const Color(0xFF415A53),
                      child: InkWell(
                        // splashColor: Colors.red[900],
                        onTap: () => moveToHome(context),
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
                                  'LOG IN',
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
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 10,
                          width: 100,
                          child: MouseRegion(
                            onHover: (event) {
                              setState(() {
                                isbold = true;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                isbold = false;
                              });
                            },
                          ),
                        ),
                        InkWell(
                          //splashColor: Colors.transparent,
                          onTap: () => moveToSignUp(),
                          child: Text(
                            "Don't have an acount?  SignUp",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontWeight:
                                  isbold ? FontWeight.bold : FontWeight.normal,
                              shadows: const [
                                Shadow(color: Colors.red, offset: Offset(0, -5))
                              ],
                              color: Colors.transparent,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.black,
                              decorationThickness: 0.5,
                            ),
                          ),
                        )
                      ],
                    ),
                  ]),
                )
              ],
            ),
          ),
        ));
  }
}
