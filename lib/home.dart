import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter_todo/models/model.dart';
import 'package:flutter_todo/redux/actions.dart';
import 'package:flutter_todo/redux/reducers.dart';
import 'package:flutter_todo/add_item_widget.dart';
import 'package:flutter_todo/item_list_widget.dart';
import 'package:flutter_todo/remove_items_button.dart';
import 'package:flutter_todo/models/view_model.dart';

class Home extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Todo List'),
			),
			body: StoreConnector<AppState, ViewModel>(
				converter: (Store<AppState> store) => ViewModel.create(store),
				builder: (BuildContext context, ViewModel viewModel) => Column(
					children: <Widget>[
						AddItemWidget(viewModel),
						Expanded(
							child: ItemListWidget(viewModel),
						),
						RemoveItemsButton(viewModel),
					],
				),
			),
		);
	}
}