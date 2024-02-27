// ignore_for_file: must_be_immutable

part of 'onehundredten_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredten widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredtenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredten widget is first created.
class OnehundredtenInitialEvent extends OnehundredtenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends OnehundredtenEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
