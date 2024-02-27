import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ventruely/res/color.dart';
class NotificationsView extends StatefulWidget {
  const NotificationsView({super.key});

  @override
  State<NotificationsView> createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
  String image = '';
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * 0.04,top: height* 0.06),
                child: Text('Notifications',style: GoogleFonts.jost(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),),
              ),
              SizedBox(
                height: height*0.02,
              ),
              Center(
                child: Container(
                  height: height * 0.3,
                  width: width * 0.86,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: width*0.03,
                        child: Container(
                          height: height * 0.12,
                          width: width * 0.12,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.someOtherColor,
                            border: Border.all(color: AppColor.appColor,width: 2)
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/images/us.png'),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width*0.2,
                        top: height*0.03,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('New Connections !',style: GoogleFonts.jost(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20
                            ),),
                            // SizedBox(
                            //   h
                            // ),
                            Text('Hayley connected with you.',style: GoogleFonts.jost(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16
                            ),),
                            SizedBox(
                              height: height*0.01,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: const Color.fromRGBO(
                                      255, 87, 87, 30),
                                  child: Container(
                                    height: 34,
                                    width: 34,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle),
                                    child: CircleAvatar(
                                      child: image != null &&
                                          image.isNotEmpty
                                          ? CircleAvatar(
                                        radius: 85.0,
                                        backgroundImage:
                                        NetworkImage(
                                            image),
                                      )
                                          : const CircleAvatar(
                                        radius: 85.0,
                                        backgroundColor:
                                        Colors.black,
                                        backgroundImage:
                                        AssetImage(
                                            'assets/images/profile.png'),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.02,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Hayle',style: GoogleFonts.jost(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500
                                    ),),

                                    Text('@hayleshetty',style: GoogleFonts.jost(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400
                                    ),),
                                  ],
                                ),
                                SizedBox(
                                  height: height*0.02,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height*0.02,
                            ),
                            InkWell(
                              onTap: (){

                              },
                              child: Container(
                                height: height * 0.05,
                                width: width*0.2,
                                decoration: BoxDecoration(
                                    color: AppColor.appColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text('Connect',style: GoogleFonts.mulish(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500
                                  ),),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height*0.02,
                            ),
                            Text('2 hours ago',style: GoogleFonts.mulish(
                              color: Colors.black87
                            ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height*0.02,
              ),
              Center(
                child: Container(
                  height: height * 0.15,
                  width: width * 0.86,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: width*0.025,
                        child: Container(
                          height: height * 0.12,
                          width: width * 0.12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.someOtherColor,
                              border: Border.all(color: AppColor.appColor,width: 2)
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/images/m.png'),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width*0.17,
                        top: height*0.035,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Hayle Brown commented on your post.',style: GoogleFonts.jost(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 13
                            ),),

                            Text('“You are so awesome! Keep it up!”',style: GoogleFonts.jost(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 12
                            ),),
                            SizedBox(
                              height: height*0.02,
                            ),
                            Text('2 hours ago',style: GoogleFonts.mulish(
                                color: Colors.black87
                            ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height*0.02,
              ),
              Center(
                child: Container(
                  height: height * 0.15,
                  width: width * 0.86,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: width*0.025,
                        child: Container(
                          height: height * 0.12,
                          width: width * 0.12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.someOtherColor,
                              border: Border.all(color: AppColor.appColor,width: 2)
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/images/h.png'),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width*0.16,
                        top: height*0.035,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Someone made a purchase in your shop!',style: GoogleFonts.jost(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 13
                            ),),

                            Text('“Product: Book Set 1”',style: GoogleFonts.jost(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 12
                            ),),
                            SizedBox(
                              height: height*0.02,
                            ),
                            Text('2 hours ago',style: GoogleFonts.mulish(
                                color: Colors.black87
                            ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height*0.02,
              ),
              Center(
                child: Container(
                  height: height * 0.15,
                  width: width * 0.86,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: width*0.025,
                        child: Container(
                          height: height * 0.12,
                          width: width * 0.12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.someOtherColor,
                              border: Border.all(color: AppColor.appColor,width: 2)
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/images/heart.png'),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width*0.17,
                        top: height*0.035,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('New like!',style: GoogleFonts.jost(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 15
                            ),),

                            Text('“Jon liked you post: “Somewhere in Miami”',style: GoogleFonts.jost(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 12
                            ),),
                            SizedBox(
                              height: height*0.02,
                            ),
                            Text('2 hours ago',style: GoogleFonts.mulish(
                                color: Colors.black87
                            ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height*0.02,
              ),
              Center(
                child: Container(
                  height: height * 0.18,
                  width: width * 0.86,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: width*0.025,
                        child: Container(
                          height: height * 0.12,
                          width: width * 0.12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.someOtherColor,
                              border: Border.all(color: AppColor.appColor,width: 2)
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/images/c.png'),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width*0.17,
                        top: height*0.035,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Jon wants to add you in a group chat.',style: GoogleFonts.jost(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 13
                            ),),
                            SizedBox(
                              height: height * 0.014,
                            ),
                            InkWell(
                              onTap: (){

                              },
                              child: Container(
                                height: height * 0.05,
                                width: width*0.2,
                                decoration: BoxDecoration(
                                  color: AppColor.appColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text('Connect',style: GoogleFonts.mulish(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500
                                  ),),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height*0.02,
                            ),
                            Text('2 hours ago',style: GoogleFonts.mulish(
                                color: Colors.black87
                            ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height*0.04,
              ),
            ],
          ),
      ),
    );
  }
}


