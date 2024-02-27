// ignore_for_file: must_be_immutable

part of 'onehundredfiftythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredfiftythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredfiftythreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredfiftythree widget is first created.
class OnehundredfiftythreeInitialEvent extends OnehundredfiftythreeEvent {
  @override
  List<Object?> get props => [];
}
