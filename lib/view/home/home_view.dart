import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ventruely/res/color.dart';
import 'package:ventruely/utils/Routes/routes_name.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String image = '';
  int currentIndex = 0;

  List<String> selectedTechnologies = [];
  List<String> selectedBusiness = [];
  List<String> selectedMarkets = [];
  List<String> selectedManagement = [];


  void changeTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: width * 0.05, top: height * 0.07),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: const Color.fromRGBO(255, 87, 87, 30),
                      child: Container(
                        height: 44,
                        width: 44,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: CircleAvatar(
                          child: image != null && image.isNotEmpty
                              ? CircleAvatar(
                                  radius: 85.0,
                                  backgroundImage: NetworkImage(image),
                                )
                              : const CircleAvatar(
                                  radius: 85.0,
                                  backgroundColor: Colors.black,
                                  backgroundImage:
                                      AssetImage('assets/images/profile.png'),
                                ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: width * 0.04, top: height * 0.07),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      height: height * 0.07,
                      width: width * 0.7,
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () => changeTab(0),

                              child: Container(
                                decoration: BoxDecoration(
                                    color: currentIndex == 0
                                        ? AppColor.appColor
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    'For You',
                                    style: GoogleFonts.mulish(
                                        color: currentIndex == 0
                                            ? Colors.white
                                            : Colors.black45),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                changeTab(1);
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context){
                                      bool isSelected = false; // Replace this with your actual logic for determining selection

                                      return SingleChildScrollView(
                                    child: StatefulBuilder(
                                      builder: (context, setState) => AlertDialog(
                                        title: Center(
                                          child: Text('Make a selection',style: GoogleFonts.jost(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          ),
                                        ),
                                        content: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Select you Interests which you like, We will curate news according to that.',
                                              style: GoogleFonts.jost(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            ),
                                            Text('You can change your selection at any time:',
                                              style: GoogleFonts.jost(
                                                color: Colors.black54,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: height * 0.01),
                                              child: Text('Technology & Innovation',style: GoogleFonts.jost(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                          ),
                                          ),
                                            ),
                                            SizedBox(
                                              height: height * 0.02,
                                            ),
                                            SizedBox(
                                              height: height * 0.12,
                                              width: width,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Column(
                                                    children: [
                                                      buildSelectableContainer(
                                                        height,
                                                        width,
                                                        'Artificial Intelligence',
                                                        selectedTechnologies.contains('Artificial Intelligence'),
                                                            () {
                                                          setState(() {
                                                            toggleSelectedTechnology('Artificial Intelligence');
                                                          });
                                                        },
                                                      ),

                                                      // Blockchain
                                                      buildSelectableContainer(
                                                        height,
                                                        width,
                                                        'Blockchain',
                                                        selectedTechnologies.contains('Blockchain'),
                                                            () {
                                                          setState(() {
                                                            toggleSelectedTechnology('Blockchain');
                                                          });
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      buildSelectableContainer(
                                                        height,
                                                        width,
                                                        'Cyber Security',
                                                        selectedTechnologies.contains('Cyber Security'),
                                                            () {
                                                          setState(() {
                                                            toggleSelectedTechnology('Cyber Security');
                                                          });
                                                        },
                                                      ),

                                                      buildSelectableContainer(
                                                        height,
                                                        width,
                                                        'Virtual Reality',
                                                        selectedTechnologies.contains('Virtual Reality'),
                                                            () {
                                                          setState(() {
                                                            toggleSelectedTechnology('Virtual Reality');
                                                          });
                                                        },
                                                      ),

                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: height * 0.01),
                                              child: Text('Business & Finance',style: GoogleFonts.jost(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                              ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: height * 0.02,
                                            ),
                                            SizedBox(
                                              height: height * 0.12,
                                              width: width,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Column(
                                                    children: [
                                                      buildSelectableContainer(
                                                        height,
                                                        width,
                                                        'Market Trends',
                                                        selectedBusiness.contains('Market Trends'),
                                                            () {
                                                          setState(() {
                                                            toggleSelectedBusiness('Market Trends');
                                                          });
                                                        },
                                                      ),


                                                      // Blockchain
                                                      buildSelectableContainer(
                                                        height,
                                                        width,
                                                        'Startups',
                                                        selectedBusiness.contains('Startups'),
                                                            () {
                                                          setState(() {
                                                            toggleSelectedBusiness('Startups');
                                                          });
                                                        },
                                                      ),

                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      buildSelectableContainer(
                                                        height,
                                                        width,
                                                        'Entrepreneurship',
                                                        selectedBusiness.contains('Entrepreneurship'),
                                                            () {
                                                          setState(() {
                                                            toggleSelectedBusiness('Entrepreneurship');
                                                          });
                                                        },
                                                      ),


                                                      buildSelectableContainer(
                                                        height,
                                                        width,
                                                        'Investment Strategies',
                                                        selectedBusiness.contains('Investment Strategies'),
                                                            () {
                                                          setState(() {
                                                            toggleSelectedBusiness('Investment Strategies');
                                                          });
                                                        },
                                                      ),

                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: height * 0.01),
                                              child: Text('Marketing & Sales',style: GoogleFonts.jost(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                              ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: height * 0.02,
                                            ),
                                            SizedBox(
                                              height: height * 0.12,
                                              width: width,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Column(
                                                    children: [
                                                      buildSelectableContainer(
                                                        height,
                                                        width,
                                                        'Market Trend',
                                                        selectedMarkets.contains('Market Trend'),
                                                            () {
                                                          setState(() {
                                                            toggleSelectedMarket('Market Trend');
                                                          });
                                                        },
                                                      ),


                                                      // Blockchain
                                                      buildSelectableContainer(
                                                        height,
                                                        width,
                                                        'Startup',
                                                        selectedMarkets.contains('Startup'),
                                                            () {
                                                          setState(() {
                                                            toggleSelectedMarket('Startup');
                                                          });
                                                        },
                                                      ),

                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      buildSelectableContainer(
                                                        height,
                                                        width,
                                                        'Entrepreneur',
                                                        selectedMarkets.contains('Entrepreneur'),
                                                            () {
                                                          setState(() {
                                                            toggleSelectedMarket('Entrepreneur');
                                                          });
                                                        },
                                                      ),


                                                      buildSelectableContainer(
                                                        height,
                                                        width,
                                                        'Investments Strategy',
                                                        selectedMarkets.contains('Investments Strategy'),
                                                            () {
                                                          setState(() {
                                                            toggleSelectedMarket('Investments Strategy');
                                                          });
                                                        },
                                                      ),

                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: height * 0.01),
                                              child: Text('Leadership & Management',style: GoogleFonts.jost(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                              ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: height * 0.02,
                                            ),
                                            SizedBox(
                                              height: height * 0.12,
                                              width: width,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Column(
                                                    children: [
                                                      buildSelectableContainer(
                                                        height,
                                                        width,
                                                        'Market',
                                                        selectedManagement.contains('Market'),
                                                            () {
                                                          setState(() {
                                                            toggleSelectedManagement('Market');
                                                          });
                                                        },
                                                      ),


                                                      // Blockchain
                                                      buildSelectableContainer(
                                                        height,
                                                        width,
                                                        'Startup Idea',
                                                        selectedManagement.contains('Startup Idea'),
                                                            () {
                                                          setState(() {
                                                            toggleSelectedManagement('Startup Idea');
                                                          });
                                                        },
                                                      ),

                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      buildSelectableContainer(
                                                        height,
                                                        width,
                                                        'Entrepreneurs',
                                                        selectedManagement.contains('Entrepreneurs'),
                                                            () {
                                                          setState(() {
                                                            toggleSelectedManagement('Entrepreneurs');
                                                          });
                                                        },
                                                      ),


                                                      buildSelectableContainer(
                                                        height,
                                                        width,
                                                        'Investments Ideas',
                                                        selectedManagement.contains('Investments Ideas'),
                                                            () {
                                                          setState(() {
                                                            toggleSelectedManagement('Investments Ideas');
                                                          });
                                                        },
                                                      ),

                                                    ],
                                                  ),

                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: height * 0.02,
                                            ),

                                            InkWell(
                                              onTap: (){
                                                Navigator.of(context).pop();
                                              },
                                              child: Center(
                                                child: Container(
                                                  height: height * 0.05,
                                                  width:  width * 0.5,
                                                  decoration: BoxDecoration(
                                                    color: AppColor.appColor,
                                                    borderRadius: BorderRadius.circular(15)
                                                  ),
                                                  child: Center(
                                                    child: Text('Save Interest',style: GoogleFonts.jost(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 15
                                                    ),),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                                },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: currentIndex == 1
                                        ? AppColor.appColor
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    'News',
                                    style: GoogleFonts.mulish(
                                        color: currentIndex == 1
                                            ? Colors.white
                                            : Colors.black45),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.04,
              ),
              SizedBox(
                height: height * 1.3,
                width: width,
                child: Column(
                  children: [
                    currentIndex == 0
                        ? Expanded(
                            child: SizedBox(
                                height: height * 0.6,
                                child: Column(
                                  children: [
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
                                    SizedBox(
                                      height: height * 0.03,
                                    ),
                                    Container(
                                      height: height * 0.45,
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
                                            height: height * 0.02,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: width * 0.02,right: width* 0.07),
                                            child: Text(
                                              'Lorem ipsum dolor sit amet consectetur adipisicing. molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis.',
                                              style: GoogleFonts.jost(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12
                                              ),
                                            ),
                                          ),
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
                                      height: height*0.05,
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.only(left: width * 0.013),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                                    backgroundImage: AssetImage('assets/images/profile.png',),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 15, left: 10,),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Williams",
                                                  style: GoogleFonts.jost(
                                                      color: AppColor.appColor,
                                                      fontSize: 19,
                                                      fontWeight:
                                                      FontWeight.w500,),
                                                ),
                                                Text(
                                                  '@williams41',
                                                  style: GoogleFonts.jost(
                                                      color:
                                                      Colors.grey.shade500,
                                                      fontSize: 13,
                                                      fontWeight:
                                                      FontWeight.bold,),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    SizedBox(
                                      height: height * 0.03,
                                    ),
                                    Container(
                                      height: height * 0.45,
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
                                            height: height * 0.02,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: width * 0.02,right: width* 0.07),
                                            child: Text(
                                              'Lorem ipsum dolor sit amet consectetur adipisicing. molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis.',
                                              style: GoogleFonts.jost(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12
                                              ),
                                            ),
                                          ),
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
                                  ],
                                ),
                            ),
                          )
                        : Expanded(
                            child: SizedBox(
                                height: height * 0.6,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: height * 0.05,
                                      width: width,
                                      child: Stack(
                                        children: [

                                          Positioned(
                                              right:width * 0.15,
                                              child: InkWell(
                                                  onTap: (){
                                                    Navigator.pushNamed(context, RoutesName.homeNavBar);
                                                  },
                                                  child: Image.asset('assets/images/bg.png'))),
                                          Positioned(
                                              right:width * 0.07,
                                              child: Image.asset('assets/images/sel.png')),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height:  height * 0.02,
                                    ),
                                    Container(
                                      height: height * 0.16,
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
                                              3,), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Stack(
                                        children: [
                                         Positioned(
                                           right: width * 0.04,
                                           child: InkWell(
                                             onTap: (){

                                             },
                                             child: Text('...',style: GoogleFonts.jost(
                                               color: Colors.black,
                                               fontWeight: FontWeight.w700,
                                               fontSize: 16
                                             ),),
                                           ),
                                         ),
                                          Positioned(
                                            left: width *0.03,
                                            top: height * 0.02,
                                            child: Container(
                                              height: height* 0.11,
                                              width: width * 0.3,
                                              decoration: BoxDecoration(
                                                image: const DecorationImage(
                                                  image: AssetImage('assets/images/foryou.jpg'),
                                                ),
                                                borderRadius: BorderRadius.circular(10)
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: width * 0.37,
                                            top: height * 0.02,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('News Story Title',style: GoogleFonts.jost(
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 16
                                                ),),
                                                Text('Short summary of the story.',style: GoogleFonts.jost(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 13
                                                ),),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    InkWell(
                                                      onTap: (){
                                                        Navigator.pushNamed(context, RoutesName.viewNews);
                                                      },
                                                      child: Text('View',style: GoogleFonts.jost(
                                                        color: AppColor.appColor,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w600
                                                      ),),
                                                    ),
                                                    SizedBox(
                                                      width: width*0.12,
                                                    ),
                                                    InkWell(
                                                      onTap: (){

                                                      },
                                                      child: Text('Source',style: GoogleFonts.jost(
                                                          color: AppColor.appColor,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w600
                                                      ),),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height:  height * 0.02,
                                    ),
                                    Container(
                                      height: height * 0.16,
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
                                              3,), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            right: width * 0.04,
                                            child: InkWell(
                                              onTap: (){

                                              },
                                              child: Text('...',style: GoogleFonts.jost(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16
                                              ),),
                                            ),
                                          ),
                                          Positioned(
                                            left: width *0.03,
                                            top: height * 0.02,
                                            child: Container(
                                              height: height* 0.11,
                                              width: width * 0.3,
                                              decoration: BoxDecoration(
                                                  image: const DecorationImage(
                                                    image: AssetImage('assets/images/foryou.jpg'),
                                                  ),
                                                  borderRadius: BorderRadius.circular(10)
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: width * 0.37,
                                            top: height * 0.02,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('News Story Title',style: GoogleFonts.jost(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 16
                                                ),),
                                                Text('Short summary of the story.',style: GoogleFonts.jost(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 13
                                                ),),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    InkWell(
                                                      onTap: (){
                                                        Navigator.pushNamed(context, RoutesName.viewNews);
                                                      },
                                                      child: Text('View',style: GoogleFonts.jost(
                                                          color: AppColor.appColor,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w600
                                                      ),),
                                                    ),
                                                    SizedBox(
                                                      width: width*0.12,
                                                    ),
                                                    InkWell(
                                                      onTap: (){

                                                      },
                                                      child: Text('Source',style: GoogleFonts.jost(
                                                          color: AppColor.appColor,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w600
                                                      ),),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height:  height * 0.02,
                                    ),
                                    Container(
                                      height: height * 0.16,
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
                                              3,), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            right: width * 0.04,
                                            child: InkWell(
                                              onTap: (){

                                              },
                                              child: Text('...',style: GoogleFonts.jost(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16
                                              ),),
                                            ),
                                          ),
                                          Positioned(
                                            left: width *0.03,
                                            top: height * 0.02,
                                            child: Container(
                                              height: height* 0.11,
                                              width: width * 0.3,
                                              decoration: BoxDecoration(
                                                  image: const DecorationImage(
                                                    image: AssetImage('assets/images/foryou.jpg'),
                                                  ),
                                                  borderRadius: BorderRadius.circular(10)
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: width * 0.37,
                                            top: height * 0.02,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('News Story Title',style: GoogleFonts.jost(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 16
                                                ),),
                                                Text('Short summary of the story.',style: GoogleFonts.jost(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 13
                                                ),),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    InkWell(
                                                      onTap: (){
                                                        Navigator.pushNamed(context, RoutesName.viewNews);
                                                      },
                                                      child: Text('View',style: GoogleFonts.jost(
                                                          color: AppColor.appColor,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w600
                                                      ),),
                                                    ),
                                                    SizedBox(
                                                      width: width*0.12,
                                                    ),
                                                    InkWell(
                                                      onTap: (){

                                                      },
                                                      child: Text('Source',style: GoogleFonts.jost(
                                                          color: AppColor.appColor,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w600
                                                      ),),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height:  height * 0.02,
                                    ),
                                    Container(
                                      height: height * 0.16,
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
                                              3,), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            right: width * 0.04,
                                            child: InkWell(
                                              onTap: (){

                                              },
                                              child: Text('...',style: GoogleFonts.jost(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16
                                              ),),
                                            ),
                                          ),
                                          Positioned(
                                            left: width *0.03,
                                            top: height * 0.02,
                                            child: Container(
                                              height: height* 0.11,
                                              width: width * 0.3,
                                              decoration: BoxDecoration(
                                                  image: const DecorationImage(
                                                    image: AssetImage('assets/images/foryou.jpg'),
                                                  ),
                                                  borderRadius: BorderRadius.circular(10)
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: width * 0.37,
                                            top: height * 0.02,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('News Story Title',style: GoogleFonts.jost(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 16
                                                ),),
                                                Text('Short summary of the story.',style: GoogleFonts.jost(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 13
                                                ),),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    InkWell(
                                                      onTap: (){
                                                        Navigator.pushNamed(context, RoutesName.viewNews);
                                                      },
                                                      child: Text('View',style: GoogleFonts.jost(
                                                          color: AppColor.appColor,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w600
                                                      ),),
                                                    ),
                                                    SizedBox(
                                                      width: width*0.12,
                                                    ),
                                                    InkWell(
                                                      onTap: (){

                                                      },
                                                      child: Text('Source',style: GoogleFonts.jost(
                                                          color: AppColor.appColor,
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w600
                                                      ),),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
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
      floatingActionButton: currentIndex == 0
          ? FloatingActionButton(
        backgroundColor: AppColor.appColor,
        onPressed: () {
          Navigator.pushNamed(context, RoutesName.status);
        },
        child: const Center(
          child: Icon(
            FontAwesomeIcons.edit,
            color: Colors.white,
          ),
        ),
      )
          : null,
    );
  }
  Widget buildSelectableContainer(double height, double width, String text, bool isSelected, VoidCallback onTap,) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            height: height * 0.04,
            width: width * 0.3,
            decoration: BoxDecoration(
              color: isSelected ? AppColor.appColor : Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Center(
              child: Text(
                text,
                style: GoogleFonts.jost(
                  color: isSelected ? Colors.white : Colors.black54,
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
SizedBox(
  height: height * 0.02,
),
      ],
    );
  }
  void toggleSelectedTechnology(String technology) {
    if (selectedTechnologies.contains(technology)) {
      selectedTechnologies.remove(technology);
    } else {
      selectedTechnologies.add(technology);
    }
  }
  void toggleSelectedBusiness(String technology) {
    if (selectedBusiness.contains(technology)) {
      selectedBusiness.remove(technology);
    } else {
      selectedBusiness.add(technology);
    }
  }
  void toggleSelectedMarket(String technology) {
    if (selectedMarkets.contains(technology)) {
      selectedMarkets.remove(technology);
    } else {
      selectedMarkets.add(technology);
    }
  }
  void toggleSelectedManagement(String technology) {
    if (selectedManagement.contains(technology)) {
      selectedManagement.remove(technology);
    } else {
      selectedManagement.add(technology);
    }
  }
}
