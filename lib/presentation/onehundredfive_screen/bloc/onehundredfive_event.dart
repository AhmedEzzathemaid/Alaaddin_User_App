// ignore_for_file: must_be_immutable

part of 'onehundredfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredfiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredfive widget is first created.
class OnehundredfiveInitialEvent extends OnehundredfiveEvent {
  @override
  List<Object?> get props => [];
}
