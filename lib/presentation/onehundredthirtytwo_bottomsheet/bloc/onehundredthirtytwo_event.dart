// ignore_for_file: must_be_immutable

part of 'onehundredthirtytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredthirtytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredthirtytwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredthirtytwo widget is first created.
class OnehundredthirtytwoInitialEvent extends OnehundredthirtytwoEvent {
  @override
  List<Object?> get props => [];
}
