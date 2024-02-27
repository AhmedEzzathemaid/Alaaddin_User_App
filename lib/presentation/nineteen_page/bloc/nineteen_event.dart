// ignore_for_file: must_be_immutable

part of 'nineteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Nineteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NineteenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Nineteen widget is first created.
class NineteenInitialEvent extends NineteenEvent {
  @override
  List<Object?> get props => [];
}
