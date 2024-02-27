import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/color.dart';
import '../../utils/Routes/routes_name.dart';
class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  String image ='';

  @override
  Widget build(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height*0.06,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.start,
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: const Color.fromRGBO(
                            255, 87, 87, 30),
                        child: Container(
                          height: 54,
                          width: 54,
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 15, left: 10),
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.start,
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Williams",
                            style: GoogleFonts.jost(
                                color: AppColor.appColor,
                                fontSize: 19,
                                fontWeight:
                                FontWeight.w500),
                          ),
                          Text(
                            '@williams41',
                            style: GoogleFonts.jost(
                                color:
                                Colors.grey.shade500,
                                fontSize: 13,
                                fontWeight:
                                FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: width * 0.3,
                ),
                IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.settings,size: 30,color: Colors.black,),),
                SizedBox(
                  width: width * 0.01,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: width*0.05,top: height*0.02),
              child: Container(
                alignment: AlignmentDirectional.centerStart,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Occupation',style: GoogleFonts.jost(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                    ),
                    Text('Bio',style: GoogleFonts.jost(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                    ),
                    Row(
                      children: [
                        Text('1.1k',style: GoogleFonts.jost(
                          color: AppColor.appColor,
                          fontWeight: FontWeight.w900,
                          fontSize: 15,
                        ),
                        ),
                        Text('Connections',style: GoogleFonts.jost(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height*0.02,
            ),
            Row(
              children: [
                SizedBox(
                  width: width*0.05,
                ),
                InkWell(
                  onTap: (){
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        // Future.delayed(const Duration(seconds: 2), () {
                        //   Navigator.pushNamed(context, RoutesName.login);
                        // });

                        return Center(
                          child: AlertDialog(
                            backgroundColor: Colors.white,
                            alignment: Alignment.center,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            content: SizedBox(
                              height: height * 0.55,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/images/tools.png'),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  InkWell(
                                    onTap: (){

                                    },
                                    child: SizedBox(
                                      height: height * 0.1,
                                      child: Row(

                                        children: [
                                          SizedBox(
                                              height: height * 0.1,
                                              width: width * 0.1,
                                              child: Image.asset('assets/images/download.png')),
                                          SizedBox(
                                            width: width*0.04,
                                          ),
                                          Text('Chat GPT',style: GoogleFonts.jost(
                                            color: Colors.black,
                                            fontSize: 17
                                          ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  InkWell(
                                    onTap: (){

                                    },
                                    child: SizedBox(
                                      height: height * 0.1,
                                      child: Row(
                                        children: [
                                          SizedBox(
                                              height: height * 0.1,
                                              width: width * 0.1,
                                              child: Image.asset('assets/images/edit.jpg')),
                                          SizedBox(
                                            width: width*0.04,
                                          ),
                                          Text('Vision Board',style: GoogleFonts.jost(
                                              color: Colors.black,
                                              fontSize: 17
                                          ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  InkWell(
                                    onTap: (){

                                    },
                                    child: SizedBox(
                                      height: height * 0.1,
                                      child: Padding(
                                        padding:EdgeInsets.only(left: width*0.02),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                                height: height * 0.05,
                                                width: width * 0.05,
                                                child: Image.asset('assets/images/tick.png')),
                                            SizedBox(
                                              width: width*0.04,
                                            ),
                                            Text('To-do List',style: GoogleFonts.jost(
                                                color: Colors.black,
                                                fontSize: 17
                                            ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    height: height*0.043,
                    width: width*0.23,
                    decoration: BoxDecoration(
                      color: AppColor.appColor,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Text('Tools',style: GoogleFonts.mulish(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),),
                    ),
                  ),
                ),
                SizedBox(
                  width: width*0.04,
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, RoutesName.profileGroup);
                  },
                  child: Container(
                    height: height*0.043,
                    width: width*0.23,
                    decoration: BoxDecoration(
                        color: AppColor.appColor,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Text('Groups',style: GoogleFonts.mulish(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const Divider(
              color: Colors.black,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(left: height*0.03),
              child: Container(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  'Post',
                  style: GoogleFonts.jost(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                    fontSize: 18
                ),
                ),
              ),
            ),
            SizedBox(
              height: height*0.01,
            ),
            Row(
              mainAxisAlignment:
              MainAxisAlignment.start,
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                  const EdgeInsets.only(left: 10),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: const Color.fromRGBO(
                        255, 87, 87, 30),
                    child: Container(
                      height: 54,
                      width: 54,
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
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 15, left: 10),
                  child: Column(
                    mainAxisAlignment:
                    MainAxisAlignment.start,
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Williams",
                        style: GoogleFonts.jost(
                            color: AppColor.appColor,
                            fontSize: 19,
                            fontWeight:
                            FontWeight.w500),
                      ),
                      Text(
                        '@williams41 . [relative]',
                        style: GoogleFonts.jost(
                            color:
                            Colors.grey.shade500,
                            fontSize: 13,
                            fontWeight:
                            FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height*0.03,
            ),
            Container(
              height: height * 0.35,
              width: width * 0.85,
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
              child: Column(
                children: [

                  SizedBox(
                    height: height*0.03,
                  ),
                  Container(
                    height: height * 0.2,
                    width: width * 0.75,
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(34),
                        image: const DecorationImage(
                            image: AssetImage(
                                'assets/images/foryou.jpg'))),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Row(
                    children:  [
                      SizedBox(
                        width: width*0.05,
                      ),
                      const Icon(
                        Icons.comment_outlined,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: width*0.01,
                      ),
                      Text('4',style: GoogleFonts.mulish(

                      ),),
                      SizedBox(
                        width: width*0.12,
                      ),
                      const Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: width*0.01,
                      ),
                      Text('4',style: GoogleFonts.mulish(

                      ),),
                      SizedBox(
                        width: width*0.13,
                      ),
                      const Icon(
                        Icons.bookmark_outline,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: width*0.13,
                      ),
                      const Icon(
                        Icons.share_outlined,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height*0.03,
            ),
            Container(
              height: height * 0.35,
              width: width * 0.85,
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
              child: Column(
                children: [

                  SizedBox(
                    height: height*0.03,
                  ),
                  Container(
                    height: height * 0.2,
                    width: width * 0.75,
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(34),
                        image: const DecorationImage(
                            image: AssetImage(
                                'assets/images/foryou.jpg'))),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Row(
                    children:  [
                      SizedBox(
                        width: width*0.05,
                      ),
                      const Icon(
                        Icons.comment_outlined,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: width*0.01,
                      ),
                      Text('4',style: GoogleFonts.mulish(

                      ),),
                      SizedBox(
                        width: width*0.12,
                      ),
                      const Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: width*0.01,
                      ),
                      Text('4',style: GoogleFonts.mulish(

                      ),),
                      SizedBox(
                        width: width*0.13,
                      ),
                      const Icon(
                        Icons.bookmark_outline,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: width*0.13,
                      ),
                      const Icon(
                        Icons.share_outlined,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height*0.03,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.appColor,
        onPressed: (){
          Navigator.pushNamed(context, RoutesName.status);
        },
        child: const Icon(FontAwesomeIcons.edit,size: 20,color: Colors.white,),
      ),
    );
  }
}
