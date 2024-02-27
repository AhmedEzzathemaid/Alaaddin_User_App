// ignore_for_file: must_be_immutable

part of 'seventytwo_bloc.dart';

/// Represents the state of Seventytwo in the application.
class SeventytwoState extends Equatable {
  SeventytwoState({this.seventytwoModelObj});

  SeventytwoModel? seventytwoModelObj;

  @override
  List<Object?> get props => [
        seventytwoModelObj,
      ];

  SeventytwoState copyWith({SeventytwoModel? seventytwoModelObj}) {
    return SeventytwoState(
      seventytwoModelObj: seventytwoModelObj ?? this.seventytwoModelObj,
    );
  }
}
