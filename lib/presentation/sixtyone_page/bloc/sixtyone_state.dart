// ignore_for_file: must_be_immutable

part of 'sixtyone_bloc.dart';

/// Represents the state of Sixtyone in the application.
class SixtyoneState extends Equatable {
  SixtyoneState({this.sixtyoneModelObj});

  SixtyoneModel? sixtyoneModelObj;

  @override
  List<Object?> get props => [
        sixtyoneModelObj,
      ];

  SixtyoneState copyWith({SixtyoneModel? sixtyoneModelObj}) {
    return SixtyoneState(
      sixtyoneModelObj: sixtyoneModelObj ?? this.sixtyoneModelObj,
    );
  }
}
