import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/color.dart';
class ProfileGroupView extends StatefulWidget {
  const ProfileGroupView({super.key});

  @override
  State<ProfileGroupView> createState() => _ProfileGroupViewState();
}

class _ProfileGroupViewState extends State<ProfileGroupView> {
  int currentIndex = 0;
  String image ='';

  void changeTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: height * 0.06),
              child: SizedBox(
                height: height * 0.045,
                width: width,
                child: Stack(
                  children: [
                    Positioned(
                      left: width * 0.04,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(Icons.arrow_back,size: 30,color: Colors.black,),
                      ),
                    ),
                    Positioned(
                      left: width * 0.16,
                      top: height*0.004,
                      child: Text(
                        'Groups',
                        style: GoogleFonts.jost(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
              EdgeInsets.only(left: width * 0.01, top: height * 0.03),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                height: height * 0.06,
                width: width * 0.9,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => changeTab(0),

                        child: Container(
                          decoration: BoxDecoration(
                              color: currentIndex == 0
                                  ? AppColor.appColor
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              'My Groups',
                              style: GoogleFonts.mulish(
                                  color: currentIndex == 0
                                      ? Colors.white
                                      : Colors.black45),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          changeTab(1);

                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: currentIndex == 1
                                  ? AppColor.appColor
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              'Groups | Follow',
                              style: GoogleFonts.mulish(
                                  color: currentIndex == 1
                                      ? Colors.white
                                      : Colors.black45),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        Padding(
          padding: EdgeInsets.only(left: width*0.8,top: height*0.02),
          child: Image.asset('assets/images/sel.png'),
        ),
            SizedBox(
              height: height*0.02,
            ),
            SizedBox(
              height: height * 1.3,
              width: width,
              child: Column(
                children: [
                  currentIndex == 0
                      ? Expanded(
                    child: SizedBox(
                      height: height * 0.6,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){

                            },
                            child: Container(
                              height: height*0.1,
                              width: width*0.9,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: const Offset(0,
                                        3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: width * 0.03,
                                    top: height*0.015,
                                    child: CircleAvatar(
                                      radius: 24,
                                      backgroundColor: Colors.black,
                                      child: Container(
                                        height: 44,
                                        width: 44,
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
                                            backgroundImage: AssetImage('assets/images/team.webp',),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: width * 0.22,
                                    top: height*0.015,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Group Name',style: GoogleFonts.jost(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600
                                        ),),
                                        Text('Description of the group...',style: GoogleFonts.jost(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600
                                        ),),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    right: width *0.03,
                                    top: height*0.024,
                                      child:  const Icon(
                                        Icons.play_arrow_outlined,
                                        size: 35,
                                        color: Colors.black,
                                      ),),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height*0.02,
                          ),
                          InkWell(
                            onTap: (){

                            },
                            child: Container(
                              height: height*0.1,
                              width: width*0.9,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: const Offset(0,
                                        3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: width * 0.03,
                                    top: height*0.015,
                                    child: CircleAvatar(
                                      radius: 24,
                                      backgroundColor: Colors.black,
                                      child: Container(
                                        height: 44,
                                        width: 44,
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
                                            backgroundImage: AssetImage('assets/images/team.webp',),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: width * 0.22,
                                    top: height*0.015,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Group Name',style: GoogleFonts.jost(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600
                                        ),),
                                        Text('Description of the group...',style: GoogleFonts.jost(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600
                                        ),),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    right: width *0.03,
                                    top: height*0.024,
                                    child:  const Icon(
                                      Icons.play_arrow_outlined,
                                      size: 35,
                                      color: Colors.black,
                                    ),),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height*0.02,
                          ),
                          InkWell(
                            onTap: (){

                            },
                            child: Container(
                              height: height*0.1,
                              width: width*0.9,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: const Offset(0,
                                        3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: width * 0.03,
                                    top: height*0.015,
                                    child: CircleAvatar(
                                      radius: 24,
                                      backgroundColor: Colors.black,
                                      child: Container(
                                        height: 44,
                                        width: 44,
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
                                            backgroundImage: AssetImage('assets/images/team.webp',),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: width * 0.22,
                                    top: height*0.015,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Group Name',style: GoogleFonts.jost(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600
                                        ),),
                                        Text('Description of the group...',style: GoogleFonts.jost(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600
                                        ),),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    right: width *0.03,
                                    top: height*0.024,
                                    child:  const Icon(
                                      Icons.play_arrow_outlined,
                                      size: 35,
                                      color: Colors.black,
                                    ),),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height*0.02,
                          ),
                          InkWell(
                            onTap: (){

                            },
                            child: Container(
                              height: height*0.1,
                              width: width*0.9,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: const Offset(0,
                                        3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: width * 0.03,
                                    top: height*0.015,
                                    child: CircleAvatar(
                                      radius: 24,
                                      backgroundColor: Colors.black,
                                      child: Container(
                                        height: 44,
                                        width: 44,
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
                                            backgroundImage: AssetImage('assets/images/team.webp',),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: width * 0.22,
                                    top: height*0.015,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Group Name',style: GoogleFonts.jost(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600
                                        ),),
                                        Text('Description of the group...',style: GoogleFonts.jost(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600
                                        ),),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    right: width *0.03,
                                    top: height*0.024,
                                    child:  const Icon(
                                      Icons.play_arrow_outlined,
                                      size: 35,
                                      color: Colors.black,
                                    ),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                      : Expanded(
                    child: SizedBox(
                      height: height * 0.6,
                      child: Column(
                        children: [],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
