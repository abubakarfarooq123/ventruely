import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ventruely/res/color.dart';

import '../../utils/Routes/routes_name.dart';

class ViewNewsView extends StatefulWidget {
  const ViewNewsView({super.key});

  @override
  State<ViewNewsView> createState() => _ViewNewsViewState();
}

class _ViewNewsViewState extends State<ViewNewsView> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: width * 0.01, top: height * 0.04),
            child: IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, RoutesName.homeNavBar);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.black,
                )),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(left: height * 0.02),
            child: Container(
              alignment: Alignment.center,
              height: height * 0.2,
              width: width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/foryou.jpg'))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.07, top: height * 0.03),
            child: Text(
              'News Story Title',
              style: GoogleFonts.jost(
                  color: Colors.black,
                  fontSize: 21,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.07),
            child: Text(
              'Wednesday, February 15th',
              style: GoogleFonts.jost(
                  color: AppColor.appColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.05,top: height * 0.02,right:width * 0.03),
            child: Text(
              'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit, quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos  sapiente officiis modi at sunt excepturi expedita sint?',
              style: GoogleFonts.jost(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
          ),

        ],
      ),
    );
  }
}
