// ignore_for_file: must_be_immutable

part of 'ninetyseven_bloc.dart';

/// Represents the state of Ninetyseven in the application.
class NinetysevenState extends Equatable {
  NinetysevenState({this.ninetysevenModelObj});

  NinetysevenModel? ninetysevenModelObj;

  @override
  List<Object?> get props => [
        ninetysevenModelObj,
      ];

  NinetysevenState copyWith({NinetysevenModel? ninetysevenModelObj}) {
    return NinetysevenState(
      ninetysevenModelObj: ninetysevenModelObj ?? this.ninetysevenModelObj,
    );
  }
}
