// ignore_for_file: must_be_immutable

part of 'nineteen_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NineteenTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NineteenTabContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the NineteenTabContainer widget is first created.
class NineteenTabContainerInitialEvent extends NineteenTabContainerEvent {
  @override
  List<Object?> get props => [];
}
