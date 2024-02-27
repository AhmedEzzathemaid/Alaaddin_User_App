// ignore_for_file: must_be_immutable

part of 'fifty_bloc.dart';

/// Represents the state of Fifty in the application.
class FiftyState extends Equatable {
  FiftyState({
    this.characteristicsController,
    this.ratingsreviewsController,
    this.sliderIndex = 0,
    this.fiftyModelObj,
  });

  TextEditingController? characteristicsController;

  TextEditingController? ratingsreviewsController;

  FiftyModel? fiftyModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        characteristicsController,
        ratingsreviewsController,
        sliderIndex,
        fiftyModelObj,
      ];

  FiftyState copyWith({
    TextEditingController? characteristicsController,
    TextEditingController? ratingsreviewsController,
    int? sliderIndex,
    FiftyModel? fiftyModelObj,
  }) {
    return FiftyState(
      characteristicsController:
          characteristicsController ?? this.characteristicsController,
      ratingsreviewsController:
          ratingsreviewsController ?? this.ratingsreviewsController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      fiftyModelObj: fiftyModelObj ?? this.fiftyModelObj,
    );
  }
}
