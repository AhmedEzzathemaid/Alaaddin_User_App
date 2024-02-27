import 'package:flutter/material.dart';import 'package:abdelhamed_s_application9/core/app_export.dart';import 'package:abdelhamed_s_application9/presentation/onehundredsixtyseven_tab_container_page/onehundredsixtyseven_tab_container_page.dart';import 'package:abdelhamed_s_application9/presentation/onehundredtwentysix_page/onehundredtwentysix_page.dart';import 'package:abdelhamed_s_application9/presentation/six_page/six_page.dart';import 'package:abdelhamed_s_application9/presentation/sixty_page/sixty_page.dart';import 'package:abdelhamed_s_application9/presentation/sixtytwo_page/sixtytwo_page.dart';import 'package:abdelhamed_s_application9/widgets/custom_bottom_bar.dart';import 'bloc/six_container_bloc.dart';import 'models/six_container_model.dart';
// ignore_for_file: must_be_immutable
class SixContainerScreen extends StatelessWidget {SixContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<SixContainerBloc>(create: (context) => SixContainerBloc(SixContainerState(sixContainerModelObj: SixContainerModel()))..add(SixContainerInitialEvent()), child: SixContainerScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<SixContainerBloc, SixContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.sixPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context)));}); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.sixPage; case BottomBarEnum.Favourite: return AppRoutes.sixtyPage; case BottomBarEnum.Mycart: return AppRoutes.sixtytwoPage; case BottomBarEnum.Orders: return AppRoutes.onehundredsixtysevenTabContainerPage; case BottomBarEnum.Profile: return AppRoutes.onehundredtwentysixPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.sixPage: return SixPage.builder(context); case AppRoutes.sixtyPage: return SixtyPage.builder(context); case AppRoutes.sixtytwoPage: return SixtytwoPage.builder(context); case AppRoutes.onehundredsixtysevenTabContainerPage: return OnehundredsixtysevenTabContainerPage.builder(context); case AppRoutes.onehundredtwentysixPage: return OnehundredtwentysixPage.builder(context); default: return DefaultWidget();} } 
 }
