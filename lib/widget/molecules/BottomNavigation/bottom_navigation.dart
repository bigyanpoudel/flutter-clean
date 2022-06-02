import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/features/BottomNavigation/data/navigation_item_model.dart';

import '../../atoms/BottomNavigationItem/bottom_navigation_item.dart';

class BottomNavigation extends ConsumerWidget {
  final Function onTap;
  final List<NavigationItems> navigationItemList;
  final activeIndex;
  const BottomNavigation(
      {Key? key,
      required this.navigationItemList,
      required this.onTap,
      required this.activeIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 56,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...navigationItemList.asMap().entries.map((item) {
            return GestureDetector(
              onTap: () => onTap(item.key),
              child: BottomNavigationItem(
                icon: item.value.icon,
                label: item.value.label,
                isActive: activeIndex != null && activeIndex == item.key,
              ),
            );
          })
        ],
      ),
    );
  }
}
