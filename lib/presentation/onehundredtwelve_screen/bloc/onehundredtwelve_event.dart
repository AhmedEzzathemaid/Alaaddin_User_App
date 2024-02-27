// ignore_for_file: must_be_immutable

part of 'onehundredtwelve_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredtwelve widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredtwelveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredtwelve widget is first created.
class OnehundredtwelveInitialEvent extends OnehundredtwelveEvent {
  @override
  List<Object?> get props => [];
}
