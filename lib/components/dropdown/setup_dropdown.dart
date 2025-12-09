import 'package:flutter/material.dart';

class DropdownTextField extends StatefulWidget {
  final TextEditingController controller;
  final List<Map<String, dynamic>> items;
  final String hintText;

  const DropdownTextField({
    super.key,
    required this.controller,
    required this.items,
    required this.hintText,
  });

  @override
  State<DropdownTextField> createState() => _DropdownTextFieldState();
}

class _DropdownTextFieldState extends State<DropdownTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      readOnly: true,
      decoration: InputDecoration(
        hintText: widget.hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(17)),
        suffixIcon: const Icon(Icons.arrow_drop_down),
      ),

      onTap: () async {
        final RenderBox box = context.findRenderObject() as RenderBox;
        final Offset position = box.localToGlobal(Offset.zero);

        final selected = await showMenu<String>(
          context: context,
          position: RelativeRect.fromLTRB(
            position.dx,
            position.dy + box.size.height,
            position.dx + box.size.width,
            0,
          ),
          items: widget.items.map((item) {
            return PopupMenuItem<String>(
              value: item["label"],
              child: Row(
                children: [
                  Icon(item["icon"], size: 22),
                  const SizedBox(width: 10),
                  Text(item["label"]),
                ],
              ),
            );
          }).toList(),
        );

        if (selected != null) {
          setState(() {
            widget.controller.text = selected;
          });
        }
      },
    );
  }
}