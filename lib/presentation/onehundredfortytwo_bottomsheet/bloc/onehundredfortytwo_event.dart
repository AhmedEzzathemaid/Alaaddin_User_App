// ignore_for_file: must_be_immutable

part of 'onehundredfortytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredfortytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredfortytwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredfortytwo widget is first created.
class OnehundredfortytwoInitialEvent extends OnehundredfortytwoEvent {
  @override
  List<Object?> get props => [];
}
