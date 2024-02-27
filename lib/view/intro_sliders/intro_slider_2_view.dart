import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/color.dart';
import '../../utils/Routes/routes_name.dart';
class IntroSlider2View extends StatefulWidget {

  const IntroSlider2View({super.key});

  @override
  State<IntroSlider2View> createState() => _IntroSlider2ViewState();
}

class _IntroSlider2ViewState extends State<IntroSlider2View> {
  int _currentPage = 1;
  int totalNumberOfPages = 3; // Change this to the total number of pages

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              height: height * 0.5,
              width: width * 1,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/intro2.png'),
                ),
              ),
            ),
          ),
          Container(
            height: height * 0.5,
            width: width * 1,
            decoration: const BoxDecoration(
              color: AppColor.appColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: height * 0.02,
                    right: height * 0.01,
                    top: height * 0.1,
                  ),
                  child: Text(
                    'Built your entrepreneurial dream with Venturely. In these early days, your vision helps lay the foundation of an ecosystem designed to elevate ambitions to new lights.',
                    style: GoogleFonts.jost(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                buildPageIndicator(),
                SizedBox(
                  height: height * 0.08,
                ),
                Padding(
                  padding:EdgeInsets.only(left: height * 0.34),
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, RoutesName.intro3);
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                      ),
                      child: const Center(
                        child: Icon(Icons.arrow_forward_sharp,size: 30,color: AppColor.appColor,),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }

  Widget buildPageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
            (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          height: 8.0,
          width: 8.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == index ? Colors.white : Colors.grey,
          ),
        ),
      ),
    );
  }
}
