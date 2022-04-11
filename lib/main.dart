import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:simple_redux/domain/app_state.dart';
import 'package:simple_redux/domain/middleware.dart';
import 'package:simple_redux/domain/reducer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final store = Store<AppState>(
    reducer,
    initialState: AppState.initial(),
    middleware: [thunkMiddleware],
  );

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: const MaterialApp(
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final p = StoreProvider.of<AppState>(context);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => p.dispatch(
          loginUser('marc', 'tan'),
        ),
      ),
      body: StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          if (state.userState.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Center(
            child: Text(
              'Hello! ${state.userState.user.firstname}',
            ),
          );
        },
      ),
    );
  }
}
