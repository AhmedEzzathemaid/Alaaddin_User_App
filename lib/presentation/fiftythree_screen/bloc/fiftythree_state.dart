// ignore_for_file: must_be_immutable

part of 'fiftythree_bloc.dart';

/// Represents the state of Fiftythree in the application.
class FiftythreeState extends Equatable {
  FiftythreeState({this.fiftythreeModelObj});

  FiftythreeModel? fiftythreeModelObj;

  @override
  List<Object?> get props => [
        fiftythreeModelObj,
      ];

  FiftythreeState copyWith({FiftythreeModel? fiftythreeModelObj}) {
    return FiftythreeState(
      fiftythreeModelObj: fiftythreeModelObj ?? this.fiftythreeModelObj,
    );
  }
}
