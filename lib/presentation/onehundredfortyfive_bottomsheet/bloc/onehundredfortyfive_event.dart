// ignore_for_file: must_be_immutable

part of 'onehundredfortyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredfortyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredfortyfiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredfortyfive widget is first created.
class OnehundredfortyfiveInitialEvent extends OnehundredfortyfiveEvent {
  @override
  List<Object?> get props => [];
}
