// ignore_for_file: must_be_immutable

part of 'fortythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Fortythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FortythreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Fortythree widget is first created.
class FortythreeInitialEvent extends FortythreeEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends FortythreeEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
