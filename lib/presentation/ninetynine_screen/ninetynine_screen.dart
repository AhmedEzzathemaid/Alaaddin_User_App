import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:abdelhamed_s_application9/core/app_export.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/appbar_trailing_iconbutton_four.dart';
import 'package:abdelhamed_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'bloc/ninetynine_bloc.dart';
import 'models/ninetynine_model.dart';

class NinetynineScreen extends StatelessWidget {
  NinetynineScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  static Widget builder(BuildContext context) {
    return BlocProvider<NinetynineBloc>(
      create: (context) => NinetynineBloc(NinetynineState(
        ninetynineModelObj: NinetynineModel(),
      ))
        ..add(NinetynineInitialEvent()),
      child: NinetynineScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NinetynineBloc, NinetynineState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: _buildAppBar(context),
            body: Container(
              width: SizeUtils.width,
              height: SizeUtils.height,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgSixtynine,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                height: 551.v,
                width: 337.h,
                margin: EdgeInsets.only(
                  top: 58.v,
                  bottom: 28.v,
                ),
                child: GoogleMap(
                  //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
                  mapType: MapType.normal,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(
                      37.43296265331129,
                      -122.08832357078792,
                    ),
                    zoom: 14.4746,
                  ),
                  onMapCreated: (GoogleMapController controller) {
                    googleMapController.complete(controller);
                  },
                  zoomControlsEnabled: false,
                  zoomGesturesEnabled: false,
                  myLocationButtonEnabled: false,
                  myLocationEnabled: false,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 131.v,
      leadingWidth: 65.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 1.v,
          bottom: 85.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "msg_captain_tracking".tr,
        margin: EdgeInsets.only(
          top: 15.v,
          bottom: 92.v,
        ),
      ),
      actions: [
        AppbarTrailingIconbuttonFour(
          imagePath: ImageConstant.imgLogosGoogleMaps,
          margin: EdgeInsets.fromLTRB(20.h, 1.v, 20.h, 85.v),
        ),
      ],
      styleType: Style.bgGradientnamewhiteA700namewhiteA700opacity0,
    );
  }
}
