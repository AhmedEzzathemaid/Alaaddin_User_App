// ignore_for_file: must_be_immutable

part of 'onehundredtwentyfour_bloc.dart';

/// Represents the state of Onehundredtwentyfour in the application.
class OnehundredtwentyfourState extends Equatable {
  OnehundredtwentyfourState({this.onehundredtwentyfourModelObj});

  OnehundredtwentyfourModel? onehundredtwentyfourModelObj;

  @override
  List<Object?> get props => [
        onehundredtwentyfourModelObj,
      ];

  OnehundredtwentyfourState copyWith(
      {OnehundredtwentyfourModel? onehundredtwentyfourModelObj}) {
    return OnehundredtwentyfourState(
      onehundredtwentyfourModelObj:
          onehundredtwentyfourModelObj ?? this.onehundredtwentyfourModelObj,
    );
  }
}
