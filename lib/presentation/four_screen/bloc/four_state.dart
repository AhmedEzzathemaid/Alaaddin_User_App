// ignore_for_file: must_be_immutable

part of 'four_bloc.dart';

/// Represents the state of Four in the application.
class FourState extends Equatable {
  FourState({
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.fourModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  FourModel? fourModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        fourModelObj,
      ];

  FourState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    FourModel? fourModelObj,
  }) {
    return FourState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      fourModelObj: fourModelObj ?? this.fourModelObj,
    );
  }
}
