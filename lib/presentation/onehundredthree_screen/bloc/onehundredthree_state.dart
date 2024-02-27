// ignore_for_file: must_be_immutable

part of 'onehundredthree_bloc.dart';

/// Represents the state of Onehundredthree in the application.
class OnehundredthreeState extends Equatable {
  OnehundredthreeState({
    this.group2250Controller,
    this.onehundredthreeModelObj,
  });

  TextEditingController? group2250Controller;

  OnehundredthreeModel? onehundredthreeModelObj;

  @override
  List<Object?> get props => [
        group2250Controller,
        onehundredthreeModelObj,
      ];

  OnehundredthreeState copyWith({
    TextEditingController? group2250Controller,
    OnehundredthreeModel? onehundredthreeModelObj,
  }) {
    return OnehundredthreeState(
      group2250Controller: group2250Controller ?? this.group2250Controller,
      onehundredthreeModelObj:
          onehundredthreeModelObj ?? this.onehundredthreeModelObj,
    );
  }
}
