// ignore_for_file: must_be_immutable

part of 'eighty_bloc.dart';

/// Represents the state of Eighty in the application.
class EightyState extends Equatable {
  EightyState({
    this.group231Controller,
    this.nameController,
    this.isSelectedSwitch = false,
    this.radioGroup = "",
    this.eightyModelObj,
  });

  TextEditingController? group231Controller;

  TextEditingController? nameController;

  EightyModel? eightyModelObj;

  bool isSelectedSwitch;

  String radioGroup;

  @override
  List<Object?> get props => [
        group231Controller,
        nameController,
        isSelectedSwitch,
        radioGroup,
        eightyModelObj,
      ];

  EightyState copyWith({
    TextEditingController? group231Controller,
    TextEditingController? nameController,
    bool? isSelectedSwitch,
    String? radioGroup,
    EightyModel? eightyModelObj,
  }) {
    return EightyState(
      group231Controller: group231Controller ?? this.group231Controller,
      nameController: nameController ?? this.nameController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      radioGroup: radioGroup ?? this.radioGroup,
      eightyModelObj: eightyModelObj ?? this.eightyModelObj,
    );
  }
}
