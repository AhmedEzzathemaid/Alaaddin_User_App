// ignore_for_file: must_be_immutable

part of 'thirtytwo_bloc.dart';

/// Represents the state of Thirtytwo in the application.
class ThirtytwoState extends Equatable {
  ThirtytwoState({
    this.categoryTwoController,
    this.categoryThreeController,
    this.categoryFourController,
    this.categoryFiveController,
    this.categorySixController,
    this.categorySevenController,
    this.thirtytwoModelObj,
  });

  TextEditingController? categoryTwoController;

  TextEditingController? categoryThreeController;

  TextEditingController? categoryFourController;

  TextEditingController? categoryFiveController;

  TextEditingController? categorySixController;

  TextEditingController? categorySevenController;

  ThirtytwoModel? thirtytwoModelObj;

  @override
  List<Object?> get props => [
        categoryTwoController,
        categoryThreeController,
        categoryFourController,
        categoryFiveController,
        categorySixController,
        categorySevenController,
        thirtytwoModelObj,
      ];

  ThirtytwoState copyWith({
    TextEditingController? categoryTwoController,
    TextEditingController? categoryThreeController,
    TextEditingController? categoryFourController,
    TextEditingController? categoryFiveController,
    TextEditingController? categorySixController,
    TextEditingController? categorySevenController,
    ThirtytwoModel? thirtytwoModelObj,
  }) {
    return ThirtytwoState(
      categoryTwoController:
          categoryTwoController ?? this.categoryTwoController,
      categoryThreeController:
          categoryThreeController ?? this.categoryThreeController,
      categoryFourController:
          categoryFourController ?? this.categoryFourController,
      categoryFiveController:
          categoryFiveController ?? this.categoryFiveController,
      categorySixController:
          categorySixController ?? this.categorySixController,
      categorySevenController:
          categorySevenController ?? this.categorySevenController,
      thirtytwoModelObj: thirtytwoModelObj ?? this.thirtytwoModelObj,
    );
  }
}
