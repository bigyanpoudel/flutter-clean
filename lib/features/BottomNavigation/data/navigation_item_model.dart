import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'navigation_item_model.freezed.dart';

@freezed
class NavigationItems with _$NavigationItems {
  factory NavigationItems({
    required String label,
    required IconData icon,
  }) = _NavigationItems;
}
