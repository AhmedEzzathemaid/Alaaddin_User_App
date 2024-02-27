// ignore_for_file: must_be_immutable

part of 'onehundredfortythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredfortythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredfortythreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredfortythree widget is first created.
class OnehundredfortythreeInitialEvent extends OnehundredfortythreeEvent {
  @override
  List<Object?> get props => [];
}
