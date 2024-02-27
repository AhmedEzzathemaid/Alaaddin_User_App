// ignore_for_file: must_be_immutable

part of 'onehundredtwentyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredtwentyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredtwentysevenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredtwentyseven widget is first created.
class OnehundredtwentysevenInitialEvent extends OnehundredtwentysevenEvent {
  @override
  List<Object?> get props => [];
}
