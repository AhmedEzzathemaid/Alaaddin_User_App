// ignore_for_file: must_be_immutable

part of 'twentysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Twentysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TwentysixEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Twentysix widget is first created.
class TwentysixInitialEvent extends TwentysixEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends TwentysixEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
