// ignore_for_file: must_be_immutable

part of 'onehundredeighteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredeighteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredeighteenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredeighteen widget is first created.
class OnehundredeighteenInitialEvent extends OnehundredeighteenEvent {
  @override
  List<Object?> get props => [];
}
