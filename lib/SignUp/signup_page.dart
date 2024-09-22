import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:lottie/lottie.dart';
import 'package:merosafarapp/Login/login_page.dart';
import 'package:merosafarapp/Otp/otp_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key?key}):super(key: key);
  static String verify ='';

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String phone ='';
  String countrycode ="+977";
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.only(bottom: 80),
              child: Column(
                children: [
                  Lottie.asset("assets/images/Animation - 1709524973348.json",
                      height: 350, width: 1200, fit: BoxFit.fill),
                  // Image.asset(
                  //   "assets/images/suryaa.jpg",
                  //   height: 350,
                  //   width: 1200,
                  //   fit: BoxFit.fill,
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Please enter your phone number",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "We need it to connect components with you",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 320,
                        child: IntlPhoneField(
                          keyboardType: TextInputType.phone,
                          onChanged: (value) {
                            phone!= value;
                          },
                          initialCountryCode: 'Nep',
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            hintText: "Phone Number",
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.red.shade700,
                        borderRadius: BorderRadius.circular(10)),
                    height: 45,
                    width: 325,
                    child: MaterialButton(
                      onPressed: () async{
                        await FirebaseAuth.instance.verifyPhoneNumber(
  phoneNumber: '${phone}',
  verificationCompleted: (PhoneAuthCredential credential) {},
  verificationFailed: (FirebaseAuthException e) {},
  codeSent: (String verificationId, int? resendToken) {
    SignUpPage.verify =verificationId;
  },
  codeAutoRetrievalTimeout: (String verificationId) {},
);
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => OtpPage()));
                      },
                      child: Text(
                        "Send Code",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignPage()));
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.green.shade700),
                          ))
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
