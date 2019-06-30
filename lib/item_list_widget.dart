import 'package:flutter/material.dart';
import 'package:flutter_todo/models/view_model.dart';

class ItemListWidget extends StatefulWidget {
	final ViewModel model;

	ItemListWidget(this.model);

	@override
	_ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemListWidget> {
	@override
	Widget build(BuildContext context) {
    	return Container();
  	}
}