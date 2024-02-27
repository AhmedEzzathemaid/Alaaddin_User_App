// ignore_for_file: must_be_immutable

part of 'onehundredfiftytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredfiftytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredfiftytwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredfiftytwo widget is first created.
class OnehundredfiftytwoInitialEvent extends OnehundredfiftytwoEvent {
  @override
  List<Object?> get props => [];
}
