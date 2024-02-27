// ignore_for_file: must_be_immutable

part of 'sixtyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Sixtyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SixtyfiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Sixtyfive widget is first created.
class SixtyfiveInitialEvent extends SixtyfiveEvent {
  @override
  List<Object?> get props => [];
}
