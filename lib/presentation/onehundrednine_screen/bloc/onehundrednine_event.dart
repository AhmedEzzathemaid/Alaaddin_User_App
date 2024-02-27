// ignore_for_file: must_be_immutable

part of 'onehundrednine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundrednine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundrednineEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundrednine widget is first created.
class OnehundrednineInitialEvent extends OnehundrednineEvent {
  @override
  List<Object?> get props => [];
}
