// ignore_for_file: must_be_immutable

part of 'seventyfour_bloc.dart';

/// Represents the state of Seventyfour in the application.
class SeventyfourState extends Equatable {
  SeventyfourState({
    this.isSelectedSwitch = false,
    this.seventyfourModelObj,
  });

  SeventyfourModel? seventyfourModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        seventyfourModelObj,
      ];

  SeventyfourState copyWith({
    bool? isSelectedSwitch,
    SeventyfourModel? seventyfourModelObj,
  }) {
    return SeventyfourState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      seventyfourModelObj: seventyfourModelObj ?? this.seventyfourModelObj,
    );
  }
}
