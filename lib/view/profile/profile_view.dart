import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/color.dart';
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
            Text(
              'Post',
              style: GoogleFonts.mulish(
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
            ),
            
          ],
        ),
      ),
    );
  }
}
