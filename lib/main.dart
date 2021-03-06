import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:simple_redux/const/keys.dart';
import 'package:simple_redux/data/repo/user_repository.dart';
import 'package:simple_redux/data/viewmodels/user_viewmodel.dart';
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
    middleware: [
      EpicMiddleware(
        combineEpics<AppState>([
          DemoMiddleWare(UserRepository()),
        ]),
      )
    ],
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
    return StoreConnector<AppState, UserViewModel>(
      distinct: true,
      converter: (store) => UserViewModel.fromStore(store),
      builder: (context, vm) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            key: const Key(Constant.KEY_FLOATINGBUTTON),
            child: const Icon(Icons.get_app_sharp),
            onPressed: () {
              vm.onFetchUser('marc', 'tan');
            },
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ElevatedButton(
              //   onPressed: () {
              //     // p.dispatch(reloginUser());
              //   },
              //   child: Text('reload'),
              // ),
              Builder(
                builder: (context) {
                  if (vm.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(
                        key: Key(Constant.KEY_PROGRESS_INDICATOR),
                      ),
                    );
                  }
                  return Center(
                    child: Text(
                      'Hello! ${vm.firstname}',
                      key: const Key(Constant.KEY_TEXT_NAME),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
