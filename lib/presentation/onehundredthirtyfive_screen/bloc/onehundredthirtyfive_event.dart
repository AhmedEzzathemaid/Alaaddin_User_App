// ignore_for_file: must_be_immutable

part of 'onehundredthirtyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredthirtyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredthirtyfiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredthirtyfive widget is first created.
class OnehundredthirtyfiveInitialEvent extends OnehundredthirtyfiveEvent {
  @override
  List<Object?> get props => [];
}
