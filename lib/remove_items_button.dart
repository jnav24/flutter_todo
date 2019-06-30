import 'package:flutter/material.dart';
import 'package:flutter_todo/models/view_model.dart';

class RemoveItemsButton extends StatelessWidget {
	final ViewModel model;

	RemoveItemsButton(this.model);

	@override
	Widget build(BuildContext context) {
		return RaisedButton(
			child: Text('Delete all items'),
			onPressed: () => model.onRemoveItems(),
		);
	}
}