import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:sentimental_analyst/shared/components/components.dart';
import 'package:sentimental_analyst/models/services.dart';
import 'package:sentimental_analyst/shared/components/palette.dart';
import 'package:sentimental_analyst/modules/home.dart';
import 'package:sentimental_analyst/modules/result.dart';
import 'package:sentimental_analyst/modules/signup.dart';
import 'package:sentimental_analyst/models/model.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // const LoginScreen({Key? key}) : super(key: key);
  late TextEditingController _emailTextController =
  TextEditingController(text: '');
  late TextEditingController _passTextController =
  TextEditingController(text: '');
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passFocusNode = FocusNode();

  bool _obscureText = true;

  final _loginFormKey = GlobalKey<FormState>();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool _isLoading = false;

  @override
  void dispose() {
    _emailTextController.dispose();
    _passTextController.dispose();
    super.dispose();
  }

  void _submitFormOnLogin() async {
    final isValid = _loginFormKey.currentState!.validate();
    if (isValid) {
      setState(() {
        _isLoading = true;
      });
      try{
        await _auth.signInWithEmailAndPassword(
            email: _emailTextController.text.trim().toLowerCase(),
            password: _passTextController.text.trim());
      }catch(err){
        setState(() {
          _isLoading = false;
        });
        print('error occurred $err');
      }
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: kPrimaryLightColor,
            width: double.infinity,
            height: size.height,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(
                    "assets/images/main_top.png",
                    width: size.width * 0.35,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/images/login_bottom.png",
                    width: size.width * 0.4,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Material(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: kPrimaryColor,
                          backgroundColor: kPrimaryLightColor,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    SvgPicture.asset(
                      "assets/login.svg",
                      height: size.height * 0.35,
                      width: size.height * 0.25,
                    ),
                    SizedBox(height: size.height * 0.03),
                    Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width: size.width * 0.8,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(29),
                          child: Material(
                            child: TextFormField(

                              textInputAction: TextInputAction.next,
                              onEditingComplete: () => FocusScope.of(context)
                                  .requestFocus(_passFocusNode),
                              focusNode: _emailFocusNode,
                              keyboardType: TextInputType.emailAddress,
                              controller: _emailTextController,
                              validator: (value) {
                                if (value!.isEmpty || !value.contains("@")) {
                                  return "Please enter a valid Email address";
                                } else {
                                  return null;
                                }
                              },

                              cursorColor: kPrimaryColor,
                              decoration: InputDecoration(
                                icon: Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.person,
                                    color: kPrimaryColor,
                                  ),
                                ),
                                hintText: 'Email',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        width: size.width * 0.8,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(29),
                          child: Material(
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              textInputAction: TextInputAction.done,
                              onEditingComplete: () => _submitFormOnLogin(),
                              focusNode: _passFocusNode,
                              controller: _passTextController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter your password";
                                } else {
                                  return null;
                                }
                              },
                              obscureText: true,
                              // onChanged: onChanged,
                              cursorColor: kPrimaryColor,
                              decoration: InputDecoration(

                                hintText: "Password",
                                icon: Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.lock,
                                    color: kPrimaryColor,
                                  ),
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                  child: Icon(
                                    _obscureText
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.white,
                                  ),
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        )),
                    RoundedButton(
                      text: "LOGIN",
                      press: _submitFormOnLogin
                      //     () {
                      //   Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) {
                      //         return Bottom();
                      //       },
                      //     ),
                      //   );
                      // },
                    ),

                    SizedBox(height: size.height * 0.03),
                    Material(
                      color: kPrimaryLightColor,
                      child: AlreadyHaveAnAccountCheck(
                        press: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SignUpScreen();
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
