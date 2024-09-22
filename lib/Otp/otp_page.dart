import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:merosafarapp/Location/location_page.dart';
import 'package:merosafarapp/SignUp/signup_page.dart';


class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  var code ='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_rounded,size: 20,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Confirm your Number",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "We just sent to your phone a 4-digit code via SMS to confirm your number.",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic)),
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 68,
                          width: 64,
                          child: Form(
                            child: TextFormField(
                            onSaved: (pin1){},
                              onChanged: (value) {
                                code=value;

                                if(value.length==1){
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                                decoration: InputDecoration(
                                  hintText: "0",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                              inputFormatters: [LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly]
                            ),
                          )),
                      Container(
                          height: 68,
                          width: 64,
                          child: Form(
                            child: TextFormField(
                               onSaved: (pin2){},
                               onChanged: (value) {
                                 code=value;
                                if(value.length==1){
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                                decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                              inputFormatters: [LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly]
                            ),
                          )),
                      Container(
                          height: 68,
                          width: 64,
                          child: Form(
                            child: TextFormField(
                               onSaved: (pin3){},
                               onChanged: (value) {
                                 code=value;
                                if(value.length==1){
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                                decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                              inputFormatters: [LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly]
                            ),
                          )),
                      Container(
                          height: 68,
                          width: 64,
                          child: Form(
                            child: TextFormField(
                               onSaved: (pin4){},
                               onChanged: (value) {
                                 code=value;
                                if(value.length==1){
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                                decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            inputFormatters: [LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                            ],
                            ),
                            
                          )),
                    ],
                  ),
                ),
               
                SizedBox(height: 100,),
                Center(
                  child: Container(
                    height: 45,
                    width: 370,
                    decoration: BoxDecoration(
                      color: Colors.red.shade700,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child:  MaterialButton(
                          onPressed: ()async {
                             PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: SignUpPage.verify, smsCode:code);

    // Sign the user in (or link) with the credential
    await auth.signInWithCredential(credential);

                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successfully Created!",selectionColor: Colors.redAccent,)));
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) =>LocationPage()));
          
                          },
                          child: Text(
                            "Confirm",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                  ),
                ),
                SizedBox(height: 20,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("You didn't receive a code?",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    Text("Resend",style: TextStyle(color: Colors.purple,fontSize: 16,fontWeight: FontWeight.bold),)
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
