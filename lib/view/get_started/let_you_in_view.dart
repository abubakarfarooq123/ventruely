import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/color.dart';
import '../../utils/Routes/routes_name.dart';
class LetYouInView extends StatefulWidget {
  const LetYouInView({super.key});

  @override
  State<LetYouInView> createState() => _LetYouInViewState();
}

class _LetYouInViewState extends State<LetYouInView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.12,
            ),
            Container(
              height: height * 0.3,
              width: width * 0.7,
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                ),
              ),
            ),
            SizedBox(
              height:  height * 0.04,
            ),
            Text('Let’s you in',style: GoogleFonts.jost(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 20
            ),),
            SizedBox(
              height:  height * 0.04,
            ),
            InkWell(
              child: Container(
                height: height * 0.08,
                width: width * 0.8,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset('assets/images/google.png'),
                    ),
                    Text('Continue with Google',style: GoogleFonts.mulish(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                    ),)

                  ],
                ),
              ),
            ),
            InkWell(
              child: Container(
                height: height * 0.08,
                width: width * 0.8,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset('assets/images/apple.png'),
                    ),
                    Text('Continue with Google',style: GoogleFonts.mulish(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),)

                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text('(Or)',style: GoogleFonts.mulish(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 15
            ),),
            SizedBox(
              height: height * 0.035,
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, RoutesName.login);
              },
              child: Container(
                height: height * 0.07,
                width: width * 0.8,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColor.appColor
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Sign In with Your Account',style: GoogleFonts.jost(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                    ),
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
            SizedBox(
              height: height * 0.025,
            ),
            Container(
              height: height * 0.02,
              width: width * 0.65,
              alignment: Alignment.center,
              child: Row(
                children: [
                  Text('Don’t have an Account?',style: GoogleFonts.mulish(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  ),),
                  SizedBox(
                    width:  width * 0.02,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, RoutesName.signUp);
                    },
                    child: Text('SIGN UP',style: GoogleFonts.mulish(
                      color: AppColor.appColor,
                      fontWeight: FontWeight.w800
                    ),),
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
