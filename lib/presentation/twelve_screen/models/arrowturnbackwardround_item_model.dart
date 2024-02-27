// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [arrowturnbackwardround_item_widget] screen.
class ArrowturnbackwardroundItemModel extends Equatable {ArrowturnbackwardroundItemModel({this.arrowturnbackwardround, this.isSelected, }) { arrowturnbackwardround = arrowturnbackwardround  ?? "Smartwatch";isSelected = isSelected  ?? false; }

String? arrowturnbackwardround;

bool? isSelected;

ArrowturnbackwardroundItemModel copyWith({String? arrowturnbackwardround, bool? isSelected, }) { return ArrowturnbackwardroundItemModel(
arrowturnbackwardround : arrowturnbackwardround ?? this.arrowturnbackwardround,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [arrowturnbackwardround,isSelected];
 }
