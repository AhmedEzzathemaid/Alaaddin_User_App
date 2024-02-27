// ignore_for_file: must_be_immutable

part of 'ninety_bloc.dart';

/// Represents the state of Ninety in the application.
class NinetyState extends Equatable {
  NinetyState({this.ninetyModelObj});

  NinetyModel? ninetyModelObj;

  @override
  List<Object?> get props => [
        ninetyModelObj,
      ];

  NinetyState copyWith({NinetyModel? ninetyModelObj}) {
    return NinetyState(
      ninetyModelObj: ninetyModelObj ?? this.ninetyModelObj,
    );
  }
}
