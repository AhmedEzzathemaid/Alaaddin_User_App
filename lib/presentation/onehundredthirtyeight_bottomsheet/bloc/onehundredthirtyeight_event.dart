// ignore_for_file: must_be_immutable

part of 'onehundredthirtyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredthirtyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredthirtyeightEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredthirtyeight widget is first created.
class OnehundredthirtyeightInitialEvent extends OnehundredthirtyeightEvent {
  @override
  List<Object?> get props => [];
}
