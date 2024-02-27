// ignore_for_file: must_be_immutable

part of 'fiftyfour_bloc.dart';

/// Represents the state of Fiftyfour in the application.
class FiftyfourState extends Equatable {
  FiftyfourState({this.fiftyfourModelObj});

  FiftyfourModel? fiftyfourModelObj;

  @override
  List<Object?> get props => [
        fiftyfourModelObj,
      ];

  FiftyfourState copyWith({FiftyfourModel? fiftyfourModelObj}) {
    return FiftyfourState(
      fiftyfourModelObj: fiftyfourModelObj ?? this.fiftyfourModelObj,
    );
  }
}
