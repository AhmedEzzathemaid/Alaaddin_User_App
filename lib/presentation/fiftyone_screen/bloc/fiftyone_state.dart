// ignore_for_file: must_be_immutable

part of 'fiftyone_bloc.dart';

/// Represents the state of Fiftyone in the application.
class FiftyoneState extends Equatable {
  FiftyoneState({
    this.characteristicsController,
    this.ratingsreviewsController,
    this.selectedDropDownValue,
    this.sliderIndex = 0,
    this.fiftyoneModelObj,
  });

  TextEditingController? characteristicsController;

  TextEditingController? ratingsreviewsController;

  SelectionPopupModel? selectedDropDownValue;

  FiftyoneModel? fiftyoneModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        characteristicsController,
        ratingsreviewsController,
        selectedDropDownValue,
        sliderIndex,
        fiftyoneModelObj,
      ];

  FiftyoneState copyWith({
    TextEditingController? characteristicsController,
    TextEditingController? ratingsreviewsController,
    SelectionPopupModel? selectedDropDownValue,
    int? sliderIndex,
    FiftyoneModel? fiftyoneModelObj,
  }) {
    return FiftyoneState(
      characteristicsController:
          characteristicsController ?? this.characteristicsController,
      ratingsreviewsController:
          ratingsreviewsController ?? this.ratingsreviewsController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      fiftyoneModelObj: fiftyoneModelObj ?? this.fiftyoneModelObj,
    );
  }
}
