// ignore_for_file: must_be_immutable

part of 'onehundredten_bloc.dart';

/// Represents the state of Onehundredten in the application.
class OnehundredtenState extends Equatable {
  OnehundredtenState({
    this.typeReasonController,
    this.entireProductController,
    this.closeUpDefectController,
    this.packagevalueController,
    this.expirationDateController,
    this.nonRepairabilityController,
    this.checkmarksquareOne = false,
    this.onehundredtenModelObj,
  });

  TextEditingController? typeReasonController;

  TextEditingController? entireProductController;

  TextEditingController? closeUpDefectController;

  TextEditingController? packagevalueController;

  TextEditingController? expirationDateController;

  TextEditingController? nonRepairabilityController;

  OnehundredtenModel? onehundredtenModelObj;

  bool checkmarksquareOne;

  @override
  List<Object?> get props => [
        typeReasonController,
        entireProductController,
        closeUpDefectController,
        packagevalueController,
        expirationDateController,
        nonRepairabilityController,
        checkmarksquareOne,
        onehundredtenModelObj,
      ];

  OnehundredtenState copyWith({
    TextEditingController? typeReasonController,
    TextEditingController? entireProductController,
    TextEditingController? closeUpDefectController,
    TextEditingController? packagevalueController,
    TextEditingController? expirationDateController,
    TextEditingController? nonRepairabilityController,
    bool? checkmarksquareOne,
    OnehundredtenModel? onehundredtenModelObj,
  }) {
    return OnehundredtenState(
      typeReasonController: typeReasonController ?? this.typeReasonController,
      entireProductController:
          entireProductController ?? this.entireProductController,
      closeUpDefectController:
          closeUpDefectController ?? this.closeUpDefectController,
      packagevalueController:
          packagevalueController ?? this.packagevalueController,
      expirationDateController:
          expirationDateController ?? this.expirationDateController,
      nonRepairabilityController:
          nonRepairabilityController ?? this.nonRepairabilityController,
      checkmarksquareOne: checkmarksquareOne ?? this.checkmarksquareOne,
      onehundredtenModelObj:
          onehundredtenModelObj ?? this.onehundredtenModelObj,
    );
  }
}
