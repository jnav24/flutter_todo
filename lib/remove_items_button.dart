import 'package:flutter/material.dart';
import 'package:flutter_todo/models/view_model.dart';

class RemoveItemsButton extends StatefulWidget {
	final ViewModel model;

	RemoveItemsButton(this.model);

	@override
	_RemoveItemsState createState() => _RemoveItemsState();
}

class _RemoveItemsState extends State<RemoveItemsButton> {
	@override
	Widget build(BuildContext context) {
    	return Container();
  	}
}