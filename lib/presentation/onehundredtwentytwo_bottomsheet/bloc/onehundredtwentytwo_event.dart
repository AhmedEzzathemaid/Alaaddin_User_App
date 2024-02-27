// ignore_for_file: must_be_immutable

part of 'onehundredtwentytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredtwentytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredtwentytwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredtwentytwo widget is first created.
class OnehundredtwentytwoInitialEvent extends OnehundredtwentytwoEvent {
  @override
  List<Object?> get props => [];
}
