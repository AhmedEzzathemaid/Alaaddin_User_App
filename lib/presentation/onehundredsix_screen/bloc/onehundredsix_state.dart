// ignore_for_file: must_be_immutable

part of 'onehundredsix_bloc.dart';

/// Represents the state of Onehundredsix in the application.
class OnehundredsixState extends Equatable {
  OnehundredsixState({this.onehundredsixModelObj});

  OnehundredsixModel? onehundredsixModelObj;

  @override
  List<Object?> get props => [
        onehundredsixModelObj,
      ];

  OnehundredsixState copyWith({OnehundredsixModel? onehundredsixModelObj}) {
    return OnehundredsixState(
      onehundredsixModelObj:
          onehundredsixModelObj ?? this.onehundredsixModelObj,
    );
  }
}
