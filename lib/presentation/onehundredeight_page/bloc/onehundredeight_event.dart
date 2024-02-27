// ignore_for_file: must_be_immutable

part of 'onehundredeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredeightEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredeight widget is first created.
class OnehundredeightInitialEvent extends OnehundredeightEvent {
  @override
  List<Object?> get props => [];
}
