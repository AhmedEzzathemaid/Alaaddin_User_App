// ignore_for_file: must_be_immutable

part of 'ninety_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Ninety widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NinetyEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Ninety widget is first created.
class NinetyInitialEvent extends NinetyEvent {
  @override
  List<Object?> get props => [];
}
