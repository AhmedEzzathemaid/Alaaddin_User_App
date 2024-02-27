// ignore_for_file: must_be_immutable

part of 'onehundredtwentysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredtwentysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredtwentysixEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredtwentysix widget is first created.
class OnehundredtwentysixInitialEvent extends OnehundredtwentysixEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends OnehundredtwentysixEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
