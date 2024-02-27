import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ventruely/res/color.dart';

import '../../utils/Routes/routes_name.dart';
class ProfileDetailView extends StatefulWidget {
  const ProfileDetailView({super.key});

  @override
  State<ProfileDetailView> createState() => _ProfileDetailViewState();
}

class _ProfileDetailViewState extends State<ProfileDetailView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black, // Change this to your desired color
        ),

      automaticallyImplyLeading: true,
        title:  Text('Fill Your Profile',style: GoogleFonts.jost(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black
        ),
        ),

      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.04,
              ),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile.png'), // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 8.0,
                    right: 8.0,
                    child: CircleAvatar(
                      radius: 14,
                      backgroundColor: AppColor.appColor,
                      child: Icon(
                        FontAwesomeIcons.edit,
                        color: Colors.white,
                        size: 14,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Form(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14,right: 14,top: 14),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Full Name',
                          labelStyle: TextStyle(color: Colors.black54),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0, right: 14,top: 14),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Nick Name',
                          labelStyle: TextStyle(color: Colors.black54),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14,right: 14,top: 14),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Date of Birth',
                          labelStyle: TextStyle(color: Colors.black54),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          prefixIcon: Icon(
                            Icons.calendar_month_outlined, // Replace with your desired icon
                            color: Colors.black45,
                          ),
                          // Add other styling properties as needed
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0, right: 14,top: 14),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Username',
                          labelStyle: TextStyle(color: Colors.black45),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),

                          // Add other styling properties as needed
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0, right: 14,top: 14),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Occupation',
                          labelStyle: TextStyle(color: Colors.black45),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0, right: 14,top: 14),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Your Bio',
                          labelStyle: TextStyle(color: Colors.black45),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height:  height * 0.02,
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            Future.delayed(const Duration(seconds: 2), () {
                              Navigator.pushNamed(context, RoutesName.login);
                            });

                            return AlertDialog(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              content: SizedBox(
                                height: height * 0.5,
                                child: Column(
                                  children: [
                                    Image.asset('assets/images/i.png'),
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                    Text(
                                      'Congratulations',
                                      style: GoogleFonts.jost(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17,
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                    Text(
                                      'Your Account is Ready to Use. You will be redirected to the Home Page in a \n                      Few Seconds.',
                                      style: GoogleFonts.mulish(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.05,
                                    ),
                                    const CircularProgressIndicator(
                                      backgroundColor: Colors.grey,
                                      valueColor: AlwaysStoppedAnimation<Color>(AppColor.appColor),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: height * 0.07,
                        width: width * 0.8,
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: AppColor.appColor
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width:  width * 0.29,
                            ),
                            Center(
                              child: Text(
                                'Continue',style: GoogleFonts.jost(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500
                              ),
                              ),
                            ),
                            SizedBox(
                              width:  width * 0.19,
                            ),
                            Container(
                              height: height * 0.11,
                              width: width * 0.11,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:Colors.white
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.arrow_forward_sharp,
                                  size: 20,color: AppColor.appColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
