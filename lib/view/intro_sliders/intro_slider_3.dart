import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/color.dart';
import '../../utils/Routes/routes_name.dart';
class IntroSlider3View extends StatefulWidget {

  const IntroSlider3View({super.key});

  @override
  State<IntroSlider3View> createState() => _IntroSlider3ViewState();
}

class _IntroSlider3ViewState extends State<IntroSlider3View> {
  int _currentPage = 2;
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
                  image: AssetImage('assets/images/intro3.png'),
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
                    'At Venturely, conversations ignite innovation. Your voice matters here, shaping a community where insights evolves into impactful collaborations.',
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
                  padding:EdgeInsets.only(left: height * 0.2),
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, RoutesName.letYouIn);
                    },
                    child: Container(
                      height: height * 0.08,
                      width: width * 0.5,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                          color: Colors.white
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Get Started',style: GoogleFonts.jost(
                            color: AppColor.appColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                          ),
                          ),
                          Container(
                            height: height * 0.14,
                            width: width * 0.14,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.appColor
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.arrow_forward_sharp,
                                size: 30,color: Colors.white,
                              ),
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
