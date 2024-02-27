// ignore_for_file: must_be_immutable

part of 'onehundredfourteen_bloc.dart';

/// Represents the state of Onehundredfourteen in the application.
class OnehundredfourteenState extends Equatable {
  OnehundredfourteenState({
    this.typeReasonController,
    this.entireProductController,
    this.closeUpOfDefectController,
    this.packagevalueController,
    this.expirationDateController,
    this.cameraController,
    this.checkmarksquareOne = false,
    this.onehundredfourteenModelObj,
  });

  TextEditingController? typeReasonController;

  TextEditingController? entireProductController;

  TextEditingController? closeUpOfDefectController;

  TextEditingController? packagevalueController;

  TextEditingController? expirationDateController;

  TextEditingController? cameraController;

  OnehundredfourteenModel? onehundredfourteenModelObj;

  bool checkmarksquareOne;

  @override
  List<Object?> get props => [
        typeReasonController,
        entireProductController,
        closeUpOfDefectController,
        packagevalueController,
        expirationDateController,
        cameraController,
        checkmarksquareOne,
        onehundredfourteenModelObj,
      ];

  OnehundredfourteenState copyWith({
    TextEditingController? typeReasonController,
    TextEditingController? entireProductController,
    TextEditingController? closeUpOfDefectController,
    TextEditingController? packagevalueController,
    TextEditingController? expirationDateController,
    TextEditingController? cameraController,
    bool? checkmarksquareOne,
    OnehundredfourteenModel? onehundredfourteenModelObj,
  }) {
    return OnehundredfourteenState(
      typeReasonController: typeReasonController ?? this.typeReasonController,
      entireProductController:
          entireProductController ?? this.entireProductController,
      closeUpOfDefectController:
          closeUpOfDefectController ?? this.closeUpOfDefectController,
      packagevalueController:
          packagevalueController ?? this.packagevalueController,
      expirationDateController:
          expirationDateController ?? this.expirationDateController,
      cameraController: cameraController ?? this.cameraController,
      checkmarksquareOne: checkmarksquareOne ?? this.checkmarksquareOne,
      onehundredfourteenModelObj:
          onehundredfourteenModelObj ?? this.onehundredfourteenModelObj,
    );
  }
}
