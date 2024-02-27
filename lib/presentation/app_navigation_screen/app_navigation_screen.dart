import 'package:flutter/material.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.oneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.twoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Three".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.threeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Four".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.fourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Five".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.fiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Six - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.sixContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Seven".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.sevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Eight".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.eightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Nine".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.nineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Ten".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.tenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Eleven".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.elevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Twelve".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.twelveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Thirteen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.thirteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Fifteen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.fifteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sixteen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.sixteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Seventeen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.seventeenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Nineteen - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.nineteenTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Twenty".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.twentyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Thirty - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.thirtyTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "ThirtyTwo".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.thirtytwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "ThirtyThree".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.thirtythreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "ThirtyFour".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.thirtyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "ThirtyFive".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.thirtyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "ThirtySix".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.thirtysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "FortyFour".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.fortyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "FortyFive".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.fortyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "FortySix".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.fortysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "FortySeven".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.fortysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "FortyEight".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.fortyeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "FortyNine".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.fortynineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Fifty".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.fiftyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "FiftyOne".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.fiftyoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "FiftyTwo".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.fiftytwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "FiftyThree".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.fiftythreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "FiftySeven".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.fiftysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "FiftyEight".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.fiftyeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SixtyOne - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.sixtyoneTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SixtyFour".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.sixtyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SixtyFive".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.sixtyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SixtySix".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.sixtysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SixtySeven".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.sixtysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SixtyNine".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.sixtynineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Seventy".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.seventyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SeventyOne".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.seventyoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SeventyThree - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.seventythreeTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SeventyFour".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.seventyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SeventyFive".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.seventyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SeventySeven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.seventysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SeventyNine".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.seventynineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Eighty".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.eightyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "EightyOne".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.eightyoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "EightyThree".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.eightythreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "EightyFour".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.eightyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "EightyFive".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.eightyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "EightySix".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.eightysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "NinetyTwo".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.ninetytwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "NinetyThree".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.ninetythreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "NinetySeven".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.ninetysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "NinetyEight".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.ninetyeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "NinetyNine".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.ninetynineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundred".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.onehundredScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredOne".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredTwo".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredtwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredThree".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredthreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredFive".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredSix".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredsixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredSeven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredsevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredNine".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundrednineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredTen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredtenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredEleven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredelevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredTwelve".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredtwelveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredFourteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredfourteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredSixteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredsixteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredTwentyFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredtwentyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredTwentyFive".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredtwentyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredTwentySeven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredtwentysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredTwentyEight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredtwentyeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "OneHundredTwentyNine - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .onehundredtwentynineTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredThirtyFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredthirtyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredThirtyFive".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredthirtyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredThirtySix".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredthirtysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredThirtySeven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredthirtysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredFortyThree".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredfortythreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredFortyFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredfortyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredFortySix".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredfortysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredFortySeven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredfortysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredFortyNine".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredfortynineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredFifty".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredfiftyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredFiftyOne".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredfiftyoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredFiftyTwo".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredfiftytwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredFiftyThree".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredfiftythreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredFiftyFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredfiftyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredFiftyFive".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredfiftyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredFiftySix".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredfiftysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredFiftySeven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredfiftysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredFiftyEight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredfiftyeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredFiftyNine".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredfiftynineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredSixty".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredsixtyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredSixtyOne".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredsixtyoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredSixtyTwo".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredsixtytwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredSixtyFive".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredsixtyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredSixtySix".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredsixtysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OneHundredSixtyEight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onehundredsixtyeightScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
