// ignore_for_file: must_be_immutable

part of 'sixtyfour_bloc.dart';

/// Represents the state of Sixtyfour in the application.
class SixtyfourState extends Equatable {
  SixtyfourState({this.sixtyfourModelObj});

  SixtyfourModel? sixtyfourModelObj;

  @override
  List<Object?> get props => [
        sixtyfourModelObj,
      ];

  SixtyfourState copyWith({SixtyfourModel? sixtyfourModelObj}) {
    return SixtyfourState(
      sixtyfourModelObj: sixtyfourModelObj ?? this.sixtyfourModelObj,
    );
  }
}
