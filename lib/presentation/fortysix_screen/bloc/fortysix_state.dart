// ignore_for_file: must_be_immutable

part of 'fortysix_bloc.dart';

/// Represents the state of Fortysix in the application.
class FortysixState extends Equatable {
  FortysixState({
    this.characteristicsController,
    this.ratingsreviewsController,
    this.sliderIndex = 0,
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.fortysixModelObj,
  });

  TextEditingController? characteristicsController;

  TextEditingController? ratingsreviewsController;

  FortysixModel? fortysixModelObj;

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
        fortysixModelObj,
      ];

  FortysixState copyWith({
    TextEditingController? characteristicsController,
    TextEditingController? ratingsreviewsController,
    int? sliderIndex,
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    FortysixModel? fortysixModelObj,
  }) {
    return FortysixState(
      characteristicsController:
          characteristicsController ?? this.characteristicsController,
      ratingsreviewsController:
          ratingsreviewsController ?? this.ratingsreviewsController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      fortysixModelObj: fortysixModelObj ?? this.fortysixModelObj,
    );
  }
}
