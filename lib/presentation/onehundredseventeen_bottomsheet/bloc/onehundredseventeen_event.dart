// ignore_for_file: must_be_immutable

part of 'onehundredseventeen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredseventeen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredseventeenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredseventeen widget is first created.
class OnehundredseventeenInitialEvent extends OnehundredseventeenEvent {
  @override
  List<Object?> get props => [];
}
