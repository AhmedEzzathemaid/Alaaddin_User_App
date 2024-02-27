// ignore_for_file: must_be_immutable

part of 'onehundredfiftyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredfiftyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredfiftyfiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredfiftyfive widget is first created.
class OnehundredfiftyfiveInitialEvent extends OnehundredfiftyfiveEvent {
  @override
  List<Object?> get props => [];
}
