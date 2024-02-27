// ignore_for_file: must_be_immutable

part of 'twentynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Twentynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TwentynineEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Twentynine widget is first created.
class TwentynineInitialEvent extends TwentynineEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends TwentynineEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
