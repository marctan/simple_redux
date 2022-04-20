import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:simple_redux/domain/action.dart';
import 'package:simple_redux/domain/app_statebv.dart';
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
    middleware: [DemoMiddleWare()],
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
        onPressed: () => p.dispatch(FetchItemAction((b) => b
              ..firstname = 'marc'
              ..lastname = 'tan')
            // loginUser('marc', 'tan'),
            ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              // p.dispatch(reloginUser());
            },
            child: Text('reload'),
          ),
          StoreConnector<AppState, AppState>(
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
        ],
      ),
    );
  }
}
