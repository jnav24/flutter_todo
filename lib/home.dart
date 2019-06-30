import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter_todo/models/model.dart';
import 'package:flutter_todo/redux/actions.dart';
import 'package:flutter_todo/redux/reducers.dart';

class Home extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Todo List'),
			),
			body: StoreConnector<AppState, _ViewModel>(
				converter: (Store<AppState> store) => _ViewModel.create(store),
				builder: (BuildContext context, _ViewModel viewModel) => Column(
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

class _ViewModel {
	final List<Item> items;
	final Function(String) onAddItem;
	final Function(Item) onRemoveItem;
	final Function() onRemoveItems;

	_ViewModel({
		this.items,
		this.onAddItem,
		this.onRemoveItem,
		this.onRemoveItems,
	});

	factory _ViewModel.create(Store<AppState> store) {
		_onAddItem(String body) {
			store.dispatch(AddItemAction(body));
		}

		_onRemoveItem(Item item) {
			store.dispatch(RemoveItemAction(item));
		}

		_onRemoveItems() {
			store.dispatch(RemoveItemsAction());
		}

		return _ViewModel(
			items: store.state.items,
			onAddItem: _onAddItem,
			onRemoveItem: _onRemoveItem,
			onRemoveItems: _onRemoveItems,
		);
	}
}