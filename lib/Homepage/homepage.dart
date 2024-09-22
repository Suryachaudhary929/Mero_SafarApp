import 'package:flutter/material.dart';
import 'package:gender_picker/gender_picker.dart';
import 'package:gender_picker/source/enums.dart';
import 'package:merosafarapp/Find/find_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_rounded,
          size: 20,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child:
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          Text(
                "Let us know about yourself",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal),
                          ),
                          SizedBox(
                height: 15,
                          ),
                          Text(
                "Your name",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal),
                          ),
                          SizedBox(
                height: 5,
                          ),
                          TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 17, 7, 78)),
                        borderRadius: BorderRadius.circular(10),
                        gapPadding: 4.0),
                    hintText: "Ex.Martin luousi",
                    hoverColor: const Color.fromARGB(255, 7, 255, 40)),
                          ),
                          SizedBox(
                height: 20,
                          ),
                          Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Upload your profile photo",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/images/mandir.jpg"),
                      ),
                      Positioned(
                          bottom: -10,
                          right: 22,
                          child: IconButton(
                            onPressed: () {
                              ShowImagePickerOption(context);
                            },
                            icon: Icon(
                              Icons.add_a_photo,
                              color: Colors.red.shade900,
                            ),
                            iconSize: 30,
                          )),
                    ],
                  ),
                ],
                          ),
                          SizedBox(
                height: 20,
                          ),
                          SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text(
                      "Gender",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),
                    ),
                    Row(
                      children: [
                        GenderPickerWithImage(
                          showOtherGender: false,
                          verticalAlignedText: false,
                          selectedGender: Gender.Male,
                          selectedGenderTextStyle: TextStyle(
                              color: Color.fromARGB(255, 0, 8, 2),
                              fontWeight: FontWeight.bold),
                          unSelectedGenderTextStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.normal),
                          onChanged: (Gender) {
                            print(Gender);
                          },
                          equallyAligned: true,
                          animationDuration: Duration(milliseconds: 300),
                          isCircular: true,
                          // default : true,
                          opacityOfGradient: 0.4,
                          padding: const EdgeInsets.all(20),
                          size: 70, //default : 40
                        )
                      ],
                    ),
                  ],
                ),
                          ),
                          SizedBox(
                height: 10,
                          ),
                          Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Age",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              offset: Offset(0, 1),
                              blurRadius: 4,
                              spreadRadius: 3,
                            ),
                          ],
                        ),
                        height: 21,
                        width: 45,
                        child: Text(
                          "15-20",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              offset: Offset(0, 1),
                              blurRadius: 4,
                              spreadRadius: 3,
                            ),
                          ],
                        ),
                        height: 21,
                        width: 45,
                        child: Text(
                          "21-30",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              offset: Offset(0, 1),
                              blurRadius: 4,
                              spreadRadius: 3,
                            ),
                          ],
                        ),
                        height: 21,
                        width: 45,
                        child: Text(
                          "31-40",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              offset: Offset(0, 1),
                              blurRadius: 4,
                              spreadRadius: 3,
                            ),
                          ],
                        ),
                        height: 21,
                        width: 45,
                        child: Text(
                          "41+",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red.shade700,
                          borderRadius: BorderRadius.circular(10)),
                      height: 45,
                      width: 325,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FindPage()));
                        },
                        child: Text(
                          "Continue",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "No,thanks,",
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Skip",
                        style: TextStyle(
                            color: Color.fromARGB(255, 27, 144, 107),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
                          )
                        ]),
              ),
        ),
      ),
    );
  }
}

void ShowImagePickerOption(BuildContext context) {
  showModalBottomSheet(
      elevation: 5,
      backgroundColor:Colors.white,
      context: context,
      builder: (context) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          child: Row(children: [
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.browse_gallery,
                        size: 40,
                        color: Colors.red.shade700,
                      ),
                      Text(
                        "Gallery",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            color: Colors.red.shade700),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.camera,
                        size: 40,
                        color: Colors.red.shade700,
                      ),
                      Text(
                        "Camera",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            color: Colors.red.shade700),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]),
        );
      });
}
