import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/color.dart';
class ForgotScreenView extends StatefulWidget {
  const ForgotScreenView({super.key});

  @override
  State<ForgotScreenView> createState() => _ForgotScreenViewState();
}

class _ForgotScreenViewState extends State<ForgotScreenView> {
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
        title:  Text('Forgot Password',style: GoogleFonts.jost(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black
        ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 10),
              child: Text('We will send you an email with a link to reset your password, please enter the email associated with your account below.',
              style: GoogleFonts.mulish(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w400
              ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Form(child: Column(
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
                SizedBox(
                  height:  height * 0.06,
                ),
                InkWell(
                  onTap: (){

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
                          width:  width * 0.27,
                        ),
                        Center(
                          child: Text(
                            'Send Link',style: GoogleFonts.jost(
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
            )),
          ],
        ),
      ),
    );
  }
}
