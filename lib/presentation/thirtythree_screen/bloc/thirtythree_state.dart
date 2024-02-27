// ignore_for_file: must_be_immutable

part of 'thirtythree_bloc.dart';

/// Represents the state of Thirtythree in the application.
class ThirtythreeState extends Equatable {
  ThirtythreeState({
    this.jacketsvalueController,
    this.cartController,
    this.cartController1,
    this.underwearvalueController,
    this.jumpsuitsvalueController,
    this.sportsvalueController,
    this.blazersvalueController,
    this.bigsizesvalueController,
    this.underwearvalueController1,
    this.jumpsuitsvalueController1,
    this.thirtythreeModelObj,
  });

  TextEditingController? jacketsvalueController;

  TextEditingController? cartController;

  TextEditingController? cartController1;

  TextEditingController? underwearvalueController;

  TextEditingController? jumpsuitsvalueController;

  TextEditingController? sportsvalueController;

  TextEditingController? blazersvalueController;

  TextEditingController? bigsizesvalueController;

  TextEditingController? underwearvalueController1;

  TextEditingController? jumpsuitsvalueController1;

  ThirtythreeModel? thirtythreeModelObj;

  @override
  List<Object?> get props => [
        jacketsvalueController,
        cartController,
        cartController1,
        underwearvalueController,
        jumpsuitsvalueController,
        sportsvalueController,
        blazersvalueController,
        bigsizesvalueController,
        underwearvalueController1,
        jumpsuitsvalueController1,
        thirtythreeModelObj,
      ];

  ThirtythreeState copyWith({
    TextEditingController? jacketsvalueController,
    TextEditingController? cartController,
    TextEditingController? cartController1,
    TextEditingController? underwearvalueController,
    TextEditingController? jumpsuitsvalueController,
    TextEditingController? sportsvalueController,
    TextEditingController? blazersvalueController,
    TextEditingController? bigsizesvalueController,
    TextEditingController? underwearvalueController1,
    TextEditingController? jumpsuitsvalueController1,
    ThirtythreeModel? thirtythreeModelObj,
  }) {
    return ThirtythreeState(
      jacketsvalueController:
          jacketsvalueController ?? this.jacketsvalueController,
      cartController: cartController ?? this.cartController,
      cartController1: cartController1 ?? this.cartController1,
      underwearvalueController:
          underwearvalueController ?? this.underwearvalueController,
      jumpsuitsvalueController:
          jumpsuitsvalueController ?? this.jumpsuitsvalueController,
      sportsvalueController:
          sportsvalueController ?? this.sportsvalueController,
      blazersvalueController:
          blazersvalueController ?? this.blazersvalueController,
      bigsizesvalueController:
          bigsizesvalueController ?? this.bigsizesvalueController,
      underwearvalueController1:
          underwearvalueController1 ?? this.underwearvalueController1,
      jumpsuitsvalueController1:
          jumpsuitsvalueController1 ?? this.jumpsuitsvalueController1,
      thirtythreeModelObj: thirtythreeModelObj ?? this.thirtythreeModelObj,
    );
  }
}
