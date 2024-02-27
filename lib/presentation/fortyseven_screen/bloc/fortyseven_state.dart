// ignore_for_file: must_be_immutable

part of 'fortyseven_bloc.dart';

/// Represents the state of Fortyseven in the application.
class FortysevenState extends Equatable {
  FortysevenState({this.fortysevenModelObj});

  FortysevenModel? fortysevenModelObj;

  @override
  List<Object?> get props => [
        fortysevenModelObj,
      ];

  FortysevenState copyWith({FortysevenModel? fortysevenModelObj}) {
    return FortysevenState(
      fortysevenModelObj: fortysevenModelObj ?? this.fortysevenModelObj,
    );
  }
}
