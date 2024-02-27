// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [s4_item_widget] screen.
class S4ItemModel extends Equatable {S4ItemModel({this.s, this.isSelected, }) { s = s  ?? "S";isSelected = isSelected  ?? false; }

String? s;

bool? isSelected;

S4ItemModel copyWith({String? s, bool? isSelected, }) { return S4ItemModel(
s : s ?? this.s,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [s,isSelected];
 }
