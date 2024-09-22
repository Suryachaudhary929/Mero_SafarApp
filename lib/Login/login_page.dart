import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
   bool _obscuretext = true;

  void _toggle() {
    setState(() {
      _obscuretext = !_obscuretext;
    });
  }

  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: DrawClipper2(),
                    child: Container(
                      width: size.width,
                      height: size.height * 0.3,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                            Color(0xffa58fd2),
                            Color(0xffddc3fc),
                          ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.bottomRight)),
                    ),
                  ),
                  ClipPath(
                    clipper: DrawClipper(),
                    child: Container(
                      width: size.width,
                      height: size.height * 0.8,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        colors: [
                          Color(0xffddc3fc),
                          Color(0xff91c5fc),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Column(
                      children: [
                        SvgPicture.asset("assets/images/svg.svg",fit: BoxFit.fill,height: 110),
                        // CircleAvatar(
                        //   radius: 50,
                        //   backgroundImage:
                        //       AssetImage("assets/images/grafdayshine.jpg"),
                        // ),
                        // Text(
                        //   "Grafdayshine",
                        //   style: GoogleFonts.ubuntu(
                        //     color: Colors.white,
                        //     fontWeight: FontWeight.bold,
                        //     fontSize: 35,
                        //   ),
                        // ),
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 20, left: 20, right: 20),
                          child: TextFormField(
                            controller: emailcontroller,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: "Email Address*",
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.black,
                              ),
                              suffixIcon: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                              hintStyle:
                                 TextStyle(color: Colors.black),
                              contentPadding:
                                  EdgeInsets.only(top: 15, bottom: 15),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Your E-mail is required";
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 10, left: 20, right: 20),
                          child: TextFormField(
                            controller: passwordcontroller,
                            obscureText: !_obscuretext,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              fillColor: Colors.black,
                              hintText: "Password*",
                              hintStyle:TextStyle
                                  (color: Colors.black),
                              contentPadding:
                                  EdgeInsets.only(top: 15, bottom: 15),
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Colors.black,
                              ),
                              suffixIcon: IconButton(
                                color:
                                    !_obscuretext ? Colors.black : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    _toggle();
                                  });
                                },
                                icon: Icon(!_obscuretext
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Your Password is required";
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 365),
                    child: MaterialButton(
                      onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                         
                       }
                      },
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff6a74ce),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 45,
                          child: Center(
                              child: Text(
                            "Log In",
                            style: GoogleFonts.ubuntu(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 410, left: 30),
                    child: Text(
                      "Forget your password?",
                      style: GoogleFonts.ubuntu(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    
                  ),
                  
                 
                ],
              ),
              Text(
                "Or connect with",
                style: GoogleFonts.ubuntu(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff6a74ce),
                              offset: Offset(3.0, 3.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-3.0, -3.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                          )
                        ],
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff6a74ce),
                      ),
                      height: 40,
                      width: 160,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        child: Row(
                          children: [
                            Icon(
                              Icons.facebook,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Facebook",
                              style: GoogleFonts.ubuntu(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff6a74ce),
                              offset: Offset(3.0, 3.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-3.0, -3.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                          )
                        ],
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff6a74ce),
                      ),
                      height: 40,
                      width: 160,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        child: Row(
                          children: [
                            Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Gmail",
                              style: GoogleFonts.ubuntu(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have account?",
                    style: GoogleFonts.ubuntu(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => SignUpPage()));
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.ubuntu(
                        color: Color(0xff5172b4),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class DrawClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.80);
    path.cubicTo(size.width / 4, size.height, 3 * size.width / 4,
        size.height / 2, size.width, size.height * 0.8);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class DrawClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.80);
    path.cubicTo(size.width / 4, size.height, 3 * size.width / 4,
        size.height / 2, size.width, size.height * 0.9);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}