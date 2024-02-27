// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [s_item_widget] screen.
class SItemModel extends Equatable {SItemModel({this.s, this.isSelected, }) { s = s  ?? "S";isSelected = isSelected  ?? false; }

String? s;

bool? isSelected;

SItemModel copyWith({String? s, bool? isSelected, }) { return SItemModel(
s : s ?? this.s,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [s,isSelected];
 }
