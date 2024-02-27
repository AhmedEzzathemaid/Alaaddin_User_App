// ignore_for_file: must_be_immutable

part of 'onehundredtwentythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredtwentythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredtwentythreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredtwentythree widget is first created.
class OnehundredtwentythreeInitialEvent extends OnehundredtwentythreeEvent {
  @override
  List<Object?> get props => [];
}
