// ignore_for_file: must_be_immutable

part of 'onehundredfourteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredfourteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredfourteenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredfourteen widget is first created.
class OnehundredfourteenInitialEvent extends OnehundredfourteenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends OnehundredfourteenEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
