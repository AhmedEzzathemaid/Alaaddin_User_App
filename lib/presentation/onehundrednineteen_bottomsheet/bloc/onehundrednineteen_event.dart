// ignore_for_file: must_be_immutable

part of 'onehundrednineteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundrednineteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundrednineteenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundrednineteen widget is first created.
class OnehundrednineteenInitialEvent extends OnehundrednineteenEvent {
  @override
  List<Object?> get props => [];
}
