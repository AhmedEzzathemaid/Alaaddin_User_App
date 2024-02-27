// ignore_for_file: must_be_immutable

part of 'onehundredfifteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredfifteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredfifteenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredfifteen widget is first created.
class OnehundredfifteenInitialEvent extends OnehundredfifteenEvent {
  @override
  List<Object?> get props => [];
}
