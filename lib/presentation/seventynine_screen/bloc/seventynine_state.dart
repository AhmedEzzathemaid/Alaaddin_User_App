// ignore_for_file: must_be_immutable

part of 'seventynine_bloc.dart';

/// Represents the state of Seventynine in the application.
class SeventynineState extends Equatable {
  SeventynineState({
    this.group244Controller,
    this.zipcodeController,
    this.isSelectedSwitch = false,
    this.radioGroup = "",
    this.seventynineModelObj,
  });

  TextEditingController? group244Controller;

  TextEditingController? zipcodeController;

  SeventynineModel? seventynineModelObj;

  bool isSelectedSwitch;

  String radioGroup;

  @override
  List<Object?> get props => [
        group244Controller,
        zipcodeController,
        isSelectedSwitch,
        radioGroup,
        seventynineModelObj,
      ];

  SeventynineState copyWith({
    TextEditingController? group244Controller,
    TextEditingController? zipcodeController,
    bool? isSelectedSwitch,
    String? radioGroup,
    SeventynineModel? seventynineModelObj,
  }) {
    return SeventynineState(
      group244Controller: group244Controller ?? this.group244Controller,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      radioGroup: radioGroup ?? this.radioGroup,
      seventynineModelObj: seventynineModelObj ?? this.seventynineModelObj,
    );
  }
}
