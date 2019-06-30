import 'package:flutter/material.dart';
import 'package:flutter_todo/models/view_model.dart';

class AddItemWidget extends StatefulWidget {
	final ViewModel model;

	AddItemWidget(this.model);

	@override
	_AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItemWidget> {
	final TextEditingController controller = TextEditingController();

	@override
	Widget build(BuildContext context) {
    	return TextField(
			controller: controller,
			decoration: InputDecoration(
				hintText: 'Add an Item',
			),
			onSubmitted: (String s) {
				widget.model.onAddItem(s);
				controller.text = '';
			},
		);
  	}
}