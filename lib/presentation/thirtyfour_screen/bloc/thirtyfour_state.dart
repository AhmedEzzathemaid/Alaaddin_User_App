// ignore_for_file: must_be_immutable

part of 'thirtyfour_bloc.dart';

/// Represents the state of Thirtyfour in the application.
class ThirtyfourState extends Equatable {
  ThirtyfourState({
    this.sizeCategoryController,
    this.categoryController,
    this.sizeController,
    this.materialController,
    this.fabricController,
    this.styleController,
    this.thirtyfourModelObj,
  });

  TextEditingController? sizeCategoryController;

  TextEditingController? categoryController;

  TextEditingController? sizeController;

  TextEditingController? materialController;

  TextEditingController? fabricController;

  TextEditingController? styleController;

  ThirtyfourModel? thirtyfourModelObj;

  @override
  List<Object?> get props => [
        sizeCategoryController,
        categoryController,
        sizeController,
        materialController,
        fabricController,
        styleController,
        thirtyfourModelObj,
      ];

  ThirtyfourState copyWith({
    TextEditingController? sizeCategoryController,
    TextEditingController? categoryController,
    TextEditingController? sizeController,
    TextEditingController? materialController,
    TextEditingController? fabricController,
    TextEditingController? styleController,
    ThirtyfourModel? thirtyfourModelObj,
  }) {
    return ThirtyfourState(
      sizeCategoryController:
          sizeCategoryController ?? this.sizeCategoryController,
      categoryController: categoryController ?? this.categoryController,
      sizeController: sizeController ?? this.sizeController,
      materialController: materialController ?? this.materialController,
      fabricController: fabricController ?? this.fabricController,
      styleController: styleController ?? this.styleController,
      thirtyfourModelObj: thirtyfourModelObj ?? this.thirtyfourModelObj,
    );
  }
}
