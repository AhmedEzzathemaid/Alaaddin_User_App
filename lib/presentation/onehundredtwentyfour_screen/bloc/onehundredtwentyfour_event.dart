// ignore_for_file: must_be_immutable

part of 'onehundredtwentyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredtwentyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredtwentyfourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredtwentyfour widget is first created.
class OnehundredtwentyfourInitialEvent extends OnehundredtwentyfourEvent {
  @override
  List<Object?> get props => [];
}
