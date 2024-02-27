import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/color.dart';
import '../../utils/Routes/routes_name.dart';
class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                height: height * 0.2,
                width: width * 0.3,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
              ),
              Text('Getting Started.!',style: GoogleFonts.jost(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 20
              ),),
              Text('Create an Account to Continue your with Venturely',style: GoogleFonts.jost(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 10
              ),),
              Form(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14,right: 14,top: 14),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Email',
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
                          prefixIcon: Icon(
                            Icons.email_outlined, // Replace with your desired icon
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
                          labelText: 'Password',
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
                          prefixIcon: Icon(
                            Icons.lock_outline_rounded, // Replace with your desired icon
                            color: Colors.black45,
                          ),
                          // Add other styling properties as needed
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14,right: 14,top: 14),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Confirm Password',
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
                          prefixIcon: Icon(
                            Icons.email_outlined, // Replace with your desired icon
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
                          labelText: 'Name',
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
                          prefixIcon: Icon(
                            Icons.person_outline, // Replace with your desired icon
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
                          labelText: 'Phone',
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
                          prefixIcon: Icon(
                            Icons.phone_outlined, // Replace with your desired icon
                            color: Colors.black45,
                          ),
                          // Add other styling properties as needed
                        ),
                      ),
                    ),
                    SizedBox(
                      height:  height * 0.02,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, RoutesName.profileDetail);
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
                              width:  width * 0.31,
                            ),
                            Center(
                              child: Text(
                                'Sign Up',style: GoogleFonts.jost(
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
                    SizedBox(
                      height: height * 0.025,
                    ),
                    Text('(Or Continue With)',style: GoogleFonts.mulish(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 13.5
                    ),),
                    SizedBox(
                      height: height * 0.12,
                      width: width *0.8,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: height * 0.14,
                            width: width * 0.14,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Image.asset('assets/images/google.png'),
                            ),
                          ),
                          Container(
                            height: height * 0.14,
                            width: width * 0.14,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Image.asset('assets/images/apple.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    Container(
                      height: height * 0.02,
                      width: width * 0.66,
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Text('Already have an Account?',style: GoogleFonts.mulish(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                          ),),
                          SizedBox(
                            width:  width * 0.02,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, RoutesName.login);
                            },
                            child: Text('SIGN IN',style: GoogleFonts.mulish(
                                color: AppColor.appColor,
                                fontWeight: FontWeight.w800
                            ),),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      height:  height * 0.05,
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
