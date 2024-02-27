// ignore_for_file: must_be_immutable

part of 'onehundredtwentyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredtwentyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredtwentyoneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredtwentyone widget is first created.
class OnehundredtwentyoneInitialEvent extends OnehundredtwentyoneEvent {
  @override
  List<Object?> get props => [];
}
