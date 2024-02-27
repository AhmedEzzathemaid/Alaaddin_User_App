// ignore_for_file: must_be_immutable

part of 'fortyfive_bloc.dart';

/// Represents the state of Fortyfive in the application.
class FortyfiveState extends Equatable {
  FortyfiveState({
    this.characteristicsController,
    this.ratingsreviewsController,
    this.sliderIndex = 0,
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.fortyfiveModelObj,
  });

  TextEditingController? characteristicsController;

  TextEditingController? ratingsreviewsController;

  FortyfiveModel? fortyfiveModelObj;

  int sliderIndex;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  @override
  List<Object?> get props => [
        characteristicsController,
        ratingsreviewsController,
        sliderIndex,
        isSelectedSwitch,
        isSelectedSwitch1,
        fortyfiveModelObj,
      ];

  FortyfiveState copyWith({
    TextEditingController? characteristicsController,
    TextEditingController? ratingsreviewsController,
    int? sliderIndex,
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    FortyfiveModel? fortyfiveModelObj,
  }) {
    return FortyfiveState(
      characteristicsController:
          characteristicsController ?? this.characteristicsController,
      ratingsreviewsController:
          ratingsreviewsController ?? this.ratingsreviewsController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      fortyfiveModelObj: fortyfiveModelObj ?? this.fortyfiveModelObj,
    );
  }
}
