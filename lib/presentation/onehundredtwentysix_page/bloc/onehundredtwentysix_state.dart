// ignore_for_file: must_be_immutable

part of 'onehundredtwentysix_bloc.dart';

/// Represents the state of Onehundredtwentysix in the application.
class OnehundredtwentysixState extends Equatable {
  OnehundredtwentysixState({
    this.titleController,
    this.titleController1,
    this.titleController2,
    this.addressController,
    this.myaddressesvalueController,
    this.titleController3,
    this.termAndConditionController,
    this.titleController4,
    this.language = "",
    this.onehundredtwentysixModelObj,
  });

  TextEditingController? titleController;

  TextEditingController? titleController1;

  TextEditingController? titleController2;

  TextEditingController? addressController;

  TextEditingController? myaddressesvalueController;

  TextEditingController? titleController3;

  TextEditingController? termAndConditionController;

  TextEditingController? titleController4;

  OnehundredtwentysixModel? onehundredtwentysixModelObj;

  String language;

  @override
  List<Object?> get props => [
        titleController,
        titleController1,
        titleController2,
        addressController,
        myaddressesvalueController,
        titleController3,
        termAndConditionController,
        titleController4,
        language,
        onehundredtwentysixModelObj,
      ];

  OnehundredtwentysixState copyWith({
    TextEditingController? titleController,
    TextEditingController? titleController1,
    TextEditingController? titleController2,
    TextEditingController? addressController,
    TextEditingController? myaddressesvalueController,
    TextEditingController? titleController3,
    TextEditingController? termAndConditionController,
    TextEditingController? titleController4,
    String? language,
    OnehundredtwentysixModel? onehundredtwentysixModelObj,
  }) {
    return OnehundredtwentysixState(
      titleController: titleController ?? this.titleController,
      titleController1: titleController1 ?? this.titleController1,
      titleController2: titleController2 ?? this.titleController2,
      addressController: addressController ?? this.addressController,
      myaddressesvalueController:
          myaddressesvalueController ?? this.myaddressesvalueController,
      titleController3: titleController3 ?? this.titleController3,
      termAndConditionController:
          termAndConditionController ?? this.termAndConditionController,
      titleController4: titleController4 ?? this.titleController4,
      language: language ?? this.language,
      onehundredtwentysixModelObj:
          onehundredtwentysixModelObj ?? this.onehundredtwentysixModelObj,
    );
  }
}
