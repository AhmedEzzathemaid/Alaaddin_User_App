// ignore_for_file: must_be_immutable

part of 'onehundredthirtythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredthirtythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredthirtythreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredthirtythree widget is first created.
class OnehundredthirtythreeInitialEvent extends OnehundredthirtythreeEvent {
  @override
  List<Object?> get props => [];
}
