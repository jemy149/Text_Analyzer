import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sentimental_analyst/shared/components/components.dart';
import 'package:sentimental_analyst/shared/components/palette.dart';
import 'package:sentimental_analyst/modules/login.dart';


class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // const SignUpScreen({Key? key}) : super(key: key);

  bool _obscureText = true;
  final _signUpFormKey = GlobalKey<FormState>();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool _isLoading = false;
  late TextEditingController _emailTextController =
  TextEditingController(text: '');

  late TextEditingController _passTextController =
  TextEditingController(text: '');

  late TextEditingController _nameTextController =
  TextEditingController(text: '');
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passFocusNode = FocusNode();

  @override
  void dispose() {
    _nameTextController.dispose();
    _emailTextController.dispose();
    _passTextController.dispose();
    super.dispose();
  }

  void _submitFormOnSignUp() async {
    final isValid = _signUpFormKey.currentState!.validate();
    if (isValid) {
      setState(() {
        _isLoading = true;
      });
      try{
        await _auth.createUserWithEmailAndPassword(
            email: _emailTextController.text.trim().toLowerCase(),
            password: _passTextController.text.trim());
      }catch(err){
        setState(() {
          _isLoading = false;
        });
        print('error occurred $err');
      }
      _isLoading = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration:const BoxDecoration(color: Colors.white),
            height: size.height,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(
                    "assets/images/signup_top.png",
                    width: size.width * 0.35,
                  ),
                ),

                Form(
                  key: _signUpFormKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Material(
                        child: Text(
                          "SIGNUP",
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: kPrimaryColor),
                        ),
                      ),
                      SizedBox(height: size.height * 0.1),
                      SvgPicture.asset(
                        "assets/signup.svg",
                        height: size.height * 0.25,
                      ),
                      SizedBox(height: size.height * 0.03),

                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          width: size.width * 0.8,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(29),
                            child: Material(
                              child: TextFormField(
                                onEditingComplete: () => _submitFormOnSignUp,
                                controller: _nameTextController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please enter your name";
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
                                  hintText: 'Name',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          )),
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
                                // validator: (value) {
                                //   if (value!.isEmpty) {
                                //     return "Please enter your email";
                                //   } else {
                                //     return null;
                                //   }
                                // },
                                // onChanged: (){},
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
                                onEditingComplete: () => _submitFormOnSignUp(),
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
                                  suffixIcon:  GestureDetector(
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
                      _isLoading
                          ? Center(
                          child: Container(
                            height: 50,
                            width: 50,
                            child: CircularProgressIndicator(),
                          )):
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        width: size.width * 0.8,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(29),
                          child: ElevatedButton(
                            child: Text(
                              'SignUp',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: _submitFormOnSignUp,
                            style: ElevatedButton.styleFrom(
                                primary: kPrimaryColor,
                                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                                textStyle: TextStyle(
                                    color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ),
                       SizedBox(height: size.height * 0.03),
                      Material(
                        child: AlreadyHaveAnAccountCheck(
                          login: false,
                          press: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return LoginScreen();
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
