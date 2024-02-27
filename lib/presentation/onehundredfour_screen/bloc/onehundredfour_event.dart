// ignore_for_file: must_be_immutable

part of 'onehundredfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredfourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredfour widget is first created.
class OnehundredfourInitialEvent extends OnehundredfourEvent {
  @override
  List<Object?> get props => [];
}
