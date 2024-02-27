// ignore_for_file: must_be_immutable

part of 'onehundredfortytwo_bloc.dart';

/// Represents the state of Onehundredfortytwo in the application.
class OnehundredfortytwoState extends Equatable {
  OnehundredfortytwoState({
    this.valueController,
    this.onehundredfortytwoModelObj,
  });

  TextEditingController? valueController;

  OnehundredfortytwoModel? onehundredfortytwoModelObj;

  @override
  List<Object?> get props => [
        valueController,
        onehundredfortytwoModelObj,
      ];

  OnehundredfortytwoState copyWith({
    TextEditingController? valueController,
    OnehundredfortytwoModel? onehundredfortytwoModelObj,
  }) {
    return OnehundredfortytwoState(
      valueController: valueController ?? this.valueController,
      onehundredfortytwoModelObj:
          onehundredfortytwoModelObj ?? this.onehundredfortytwoModelObj,
    );
  }
}
