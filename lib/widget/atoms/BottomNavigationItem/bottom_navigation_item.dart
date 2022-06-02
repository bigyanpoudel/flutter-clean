import 'package:flutter/material.dart';

class BottomNavigationItem extends StatelessWidget {
  final isActive;
  final IconData icon;
  final String label;
  const BottomNavigationItem({
    Key? key,
    required this.icon,
    required this.isActive,
    required this.label,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 300),
      height: double.maxFinite,
      width: isActive ? 112 : 60,
      decoration: isActive
          ? BoxDecoration(
              color: Colors.green.shade300,
              borderRadius: BorderRadius.circular(20))
          : const BoxDecoration(),
      padding: isActive
          ? const EdgeInsets.symmetric(horizontal: 10)
          : const EdgeInsets.all(0),
      child: ListView(scrollDirection: Axis.horizontal, children: [
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 22,
                color: isActive ? Colors.white : Colors.black,
              ),
              isActive
                  ? Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        label,
                        style: const TextStyle(color: Colors.white),
                      ),
                    )
                  : Container()
            ],
          ),
        ),
      ]),
    );
  }
}
