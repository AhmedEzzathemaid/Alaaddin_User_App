// ignore_for_file: must_be_immutable

part of 'eightyone_bloc.dart';

/// Represents the state of Eightyone in the application.
class EightyoneState extends Equatable {
  EightyoneState({
    this.nameController,
    this.isSelectedSwitch = false,
    this.eightyoneModelObj,
  });

  TextEditingController? nameController;

  EightyoneModel? eightyoneModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        nameController,
        isSelectedSwitch,
        eightyoneModelObj,
      ];

  EightyoneState copyWith({
    TextEditingController? nameController,
    bool? isSelectedSwitch,
    EightyoneModel? eightyoneModelObj,
  }) {
    return EightyoneState(
      nameController: nameController ?? this.nameController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      eightyoneModelObj: eightyoneModelObj ?? this.eightyoneModelObj,
    );
  }
}
