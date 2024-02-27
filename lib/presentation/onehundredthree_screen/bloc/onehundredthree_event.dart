// ignore_for_file: must_be_immutable

part of 'onehundredthree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredthree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredthreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredthree widget is first created.
class OnehundredthreeInitialEvent extends OnehundredthreeEvent {
  @override
  List<Object?> get props => [];
}
