import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/Presentation/Shared/Components/Component.dart';
import '../../Constants/image_constant.dart';
import '../../core/global/theme/DarkTheme/theme_helper.dart';
import 'Login.dart';
class OnBoarding  extends StatefulWidget {
     OnBoarding ({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final int numPages = 2;
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;
  Widget _indicator(bool isActive) {
  return AnimatedContainer(
      duration: Duration(milliseconds: 800),
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: 4.0,
      width: isActive ? 20.0 : 4.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      )
  );
}

List<Widget> _buildPageIndicator() {
  List<Widget>list = [];
  for (int i = 0; i < numPages; i++) {
    list.add(i == currentPage ? _indicator(true) : _indicator(false));
  }
  return list;
}
  @override
  Widget build(BuildContext context) {
          return Scaffold(
            body: AnnotatedRegion<SystemUiOverlayStyle>(
              value: SystemUiOverlayStyle.light,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(1, 0.02),
                        end: Alignment(0, 1.03),
                        colors: [appTheme.gray600, appTheme.gray800])
                ),
                child: Column(
                  children: [
                    Container(
                      height: 480,
                      child: PageView(
                        controller: _pageController,
                        onPageChanged: (int page) {
                          setState(() {
                            currentPage=page;
                          });
                        },
                        children: [
                          onBoardingShow(imagePath: ImageConstant.imgTeaching,
                              title: 'Explore your new skills today',
                              description: 'Explore your new skills today you can learn various kinds of courses in your hand'),
                          onBoardingShow(imagePath: ImageConstant.imgGrades,
                              title: 'Empower your education to next level',
                              description: 'Empower your education to next level Learn new things and develop your problem solving skills'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: _buildPageIndicator()
                        ,),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 100),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          textButton(backgroundColor: theme.colorScheme
                              .onPrimary,
                              textButton: 'Next',
                              margin: EdgeInsets.only(left: 20, right: 20),
                              onTap: () {
                                currentPage != numPages - 1 ? _pageController
                                    .nextPage(
                                    duration: Duration(milliseconds: 2000),
                                    curve: Curves.ease) :
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(builder: (_) => Login()));
                              }),
                          textButton(backgroundColor: null,
                              textButton: 'Skip',
                              margin: EdgeInsets.only(left: 20, right: 20),
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                 MaterialPageRoute(builder: (_) => Login()));
                              })
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }
  //   );
  // }

}
