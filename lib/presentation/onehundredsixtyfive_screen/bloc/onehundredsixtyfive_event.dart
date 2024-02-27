// ignore_for_file: must_be_immutable

part of 'onehundredsixtyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredsixtyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredsixtyfiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredsixtyfive widget is first created.
class OnehundredsixtyfiveInitialEvent extends OnehundredsixtyfiveEvent {
  @override
  List<Object?> get props => [];
}
