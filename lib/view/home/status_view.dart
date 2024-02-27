import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ventruely/res/color.dart';
import 'package:ventruely/utils/Routes/routes_name.dart';
class StatusView extends StatefulWidget {
  const StatusView({super.key});

  @override
  State<StatusView> createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {
  String image = '';
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
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
                        Navigator.pushReplacementNamed(context, RoutesName.homeNavBar);
                      },
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.jost(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: width * 0.04,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: height * 0.045,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                          color: AppColor.appColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            'Send',
                            style: GoogleFonts.jost(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
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
            padding:
            EdgeInsets.only(left: width * 0.013),
            child: Row(
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
          ),
          Padding(
            padding:EdgeInsets.only(left: width * 0.04,right: width * 0.04),
            child: Form(
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: TextFormField(
                      maxLines: 7, // Allows for multiline input
                      decoration: const InputDecoration(
                        hintText: 'What\'s Happening?',
                        hintStyle: TextStyle(color: Colors.black54),
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
                  )

                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Container(
            alignment: AlignmentDirectional.centerStart,
            height: height * 0.2,
            width: width * 0.9,
            child: Stack(
              children: [
                Container(
                  height: height * 0.15,
                  width: width * 0.25,
                  decoration:const BoxDecoration(
                    color: Color.fromARGB(255, 255, 225, 227),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset('assets/images/image.png'),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: height * 0.08,
                    width: width * 0.08,
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.appColor, // Change the color as needed
                    ),
                    child: const Icon(
                      FontAwesomeIcons.edit,
                      color: Colors.white,
                      size: 14,
                    ),
                  ),
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}
