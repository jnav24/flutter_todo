import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter_todo/models/model.dart';
import 'package:flutter_todo/redux/actions.dart';
import 'package:flutter_todo/redux/reducers.dart';
import 'package:flutter_todo/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		final Store<AppState> store = Store<AppState>(
			appStateReducer,
			initialState: AppState.initialState(),
		);

		return StoreProvider<AppState>(
			store: store,
			child: MaterialApp(
				title: 'Flutter Demo',
				theme: ThemeData(
					primarySwatch: Colors.blue,
				),
				home: Home(),
			),
		);
	}
}
