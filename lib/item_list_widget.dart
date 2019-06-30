import 'package:flutter/material.dart';
import 'package:flutter_todo/models/model.dart';
import 'package:flutter_todo/models/view_model.dart';

class ItemListWidget extends StatelessWidget {
	final ViewModel model;

	ItemListWidget(this.model);

	@override
	Widget build(BuildContext context) {
    	return ListView(
			children: model.items.map((Item item) => ListTile(
				title: Text(item.body),
				leading: IconButton(
					icon: Icon(Icons.delete),
					onPressed: () => model.onRemoveItem(item),
				),
			)).toList(),
		);
  	}
}