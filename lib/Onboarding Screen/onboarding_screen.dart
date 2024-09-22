import 'package:flutter/material.dart';
import 'package:merosafarapp/SignUp/signup_page.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<OnBoard> data = [
    OnBoard(
        image: "assets/images/ride.jpeg",
        title: "Request Ride",
        description:
            "Request a ride get picked up by a nearby  community drivers.A travel app enables travelers to book accommodations from the comfort of their homes, where they receive complete booking details in the app itself and over other platforms integrated with the app, such as Gmail and WhatsApp."),
    OnBoard(
        image: "assets/images/confirm.jpeg",
        title: "Confirm your driver",
        description:
            "Huge drivers network helps,find comfortable,safe and cheap ride."),
    OnBoard(
        image: "assets/images/track.png",
        title: "Track Your Ride",
        description:
            "Know your driver in advance and be able to view current location in real time.")
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(children: [
          Expanded(
            child: PageView.builder(
                controller: _pageController,
                itemCount: data.length,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) => OnBoardContent(
                    image: data[index].image,
                    title: data[index].title,
                    description: data[index].description)),
          ),
          
          Padding(
            padding: const EdgeInsets.only(bottom: 70,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: currentIndex == 0 ? Colors.red.shade700 : Colors.black12,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: currentIndex == 1 ? Colors.red.shade700: Colors.black12,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: currentIndex == 2 ?Colors.red.shade700 : Colors.black12,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (Context) => SignUpPage()));
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 17, 86, 89)),
                    )),
                    SizedBox(height: 10,),
                MaterialButton(
                  onPressed: () {
                    currentIndex == 2
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (Context) => SignUpPage()))
                        : _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.ease);
                  },
                  color: Colors.red.shade700,
                  minWidth: 120,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    currentIndex == 2 ? 'Get Started' : "Next",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class OnBoard {
  final String image, title, description;
  OnBoard({
    required this.image,
    required this.title,
    required this.description,
  });
}

class OnBoardContent extends StatefulWidget {
  const OnBoardContent({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);
  final String image, title, description;

  @override
  State<OnBoardContent> createState() => _OnBoardContentState();
}

class _OnBoardContentState extends State<OnBoardContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 150),
      child: Column(
        
        children: [
          Image.asset(
            widget.image,
            height: 200,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.title,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
              .headlineMedium!
                .copyWith(fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              widget.description,
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
