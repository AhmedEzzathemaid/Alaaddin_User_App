// ignore_for_file: must_be_immutable

part of 'sixty_bloc.dart';

/// Represents the state of Sixty in the application.
class SixtyState extends Equatable {
  SixtyState({this.sixtyModelObj});

  SixtyModel? sixtyModelObj;

  @override
  List<Object?> get props => [
        sixtyModelObj,
      ];

  SixtyState copyWith({SixtyModel? sixtyModelObj}) {
    return SixtyState(
      sixtyModelObj: sixtyModelObj ?? this.sixtyModelObj,
    );
  }
}
