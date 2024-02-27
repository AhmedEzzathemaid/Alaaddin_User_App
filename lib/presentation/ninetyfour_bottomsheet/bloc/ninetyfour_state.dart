// ignore_for_file: must_be_immutable

part of 'ninetyfour_bloc.dart';

/// Represents the state of Ninetyfour in the application.
class NinetyfourState extends Equatable {
  NinetyfourState({this.ninetyfourModelObj});

  NinetyfourModel? ninetyfourModelObj;

  @override
  List<Object?> get props => [
        ninetyfourModelObj,
      ];

  NinetyfourState copyWith({NinetyfourModel? ninetyfourModelObj}) {
    return NinetyfourState(
      ninetyfourModelObj: ninetyfourModelObj ?? this.ninetyfourModelObj,
    );
  }
}
