// ignore_for_file: must_be_immutable

part of 'seventyone_bloc.dart';

/// Represents the state of Seventyone in the application.
class SeventyoneState extends Equatable {
  SeventyoneState({this.seventyoneModelObj});

  SeventyoneModel? seventyoneModelObj;

  @override
  List<Object?> get props => [
        seventyoneModelObj,
      ];

  SeventyoneState copyWith({SeventyoneModel? seventyoneModelObj}) {
    return SeventyoneState(
      seventyoneModelObj: seventyoneModelObj ?? this.seventyoneModelObj,
    );
  }
}
