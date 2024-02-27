// ignore_for_file: must_be_immutable

part of 'onehundred_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundred widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundred widget is first created.
class OnehundredInitialEvent extends OnehundredEvent {
  @override
  List<Object?> get props => [];
}
