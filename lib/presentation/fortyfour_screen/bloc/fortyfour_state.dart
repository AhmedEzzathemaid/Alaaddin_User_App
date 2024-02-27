// ignore_for_file: must_be_immutable

part of 'fortyfour_bloc.dart';

/// Represents the state of Fortyfour in the application.
class FortyfourState extends Equatable {
  FortyfourState({
    this.characteristicsController,
    this.ratingsreviewsController,
    this.selectedDropDownValue,
    this.sliderIndex = 0,
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.fortyfourModelObj,
  });

  TextEditingController? characteristicsController;

  TextEditingController? ratingsreviewsController;

  SelectionPopupModel? selectedDropDownValue;

  FortyfourModel? fortyfourModelObj;

  int sliderIndex;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  @override
  List<Object?> get props => [
        characteristicsController,
        ratingsreviewsController,
        selectedDropDownValue,
        sliderIndex,
        isSelectedSwitch,
        isSelectedSwitch1,
        fortyfourModelObj,
      ];

  FortyfourState copyWith({
    TextEditingController? characteristicsController,
    TextEditingController? ratingsreviewsController,
    SelectionPopupModel? selectedDropDownValue,
    int? sliderIndex,
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    FortyfourModel? fortyfourModelObj,
  }) {
    return FortyfourState(
      characteristicsController:
          characteristicsController ?? this.characteristicsController,
      ratingsreviewsController:
          ratingsreviewsController ?? this.ratingsreviewsController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      fortyfourModelObj: fortyfourModelObj ?? this.fortyfourModelObj,
    );
  }
}
