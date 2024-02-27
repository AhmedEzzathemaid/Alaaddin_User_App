// ignore_for_file: must_be_immutable

part of 'sixtyseven_bloc.dart';

/// Represents the state of Sixtyseven in the application.
class SixtysevenState extends Equatable {
  SixtysevenState({this.sixtysevenModelObj});

  SixtysevenModel? sixtysevenModelObj;

  @override
  List<Object?> get props => [
        sixtysevenModelObj,
      ];

  SixtysevenState copyWith({SixtysevenModel? sixtysevenModelObj}) {
    return SixtysevenState(
      sixtysevenModelObj: sixtysevenModelObj ?? this.sixtysevenModelObj,
    );
  }
}
