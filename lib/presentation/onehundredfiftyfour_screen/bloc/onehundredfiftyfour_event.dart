// ignore_for_file: must_be_immutable

part of 'onehundredfiftyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredfiftyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredfiftyfourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredfiftyfour widget is first created.
class OnehundredfiftyfourInitialEvent extends OnehundredfiftyfourEvent {
  @override
  List<Object?> get props => [];
}
