// ignore_for_file: must_be_immutable

part of 'fiftytwo_bloc.dart';

/// Represents the state of Fiftytwo in the application.
class FiftytwoState extends Equatable {
  FiftytwoState({
    this.characteristicsController,
    this.ratingsreviewsController,
    this.selectedDropDownValue,
    this.sliderIndex = 0,
    this.fiftytwoModelObj,
  });

  TextEditingController? characteristicsController;

  TextEditingController? ratingsreviewsController;

  SelectionPopupModel? selectedDropDownValue;

  FiftytwoModel? fiftytwoModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        characteristicsController,
        ratingsreviewsController,
        selectedDropDownValue,
        sliderIndex,
        fiftytwoModelObj,
      ];

  FiftytwoState copyWith({
    TextEditingController? characteristicsController,
    TextEditingController? ratingsreviewsController,
    SelectionPopupModel? selectedDropDownValue,
    int? sliderIndex,
    FiftytwoModel? fiftytwoModelObj,
  }) {
    return FiftytwoState(
      characteristicsController:
          characteristicsController ?? this.characteristicsController,
      ratingsreviewsController:
          ratingsreviewsController ?? this.ratingsreviewsController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      fiftytwoModelObj: fiftytwoModelObj ?? this.fiftytwoModelObj,
    );
  }
}
