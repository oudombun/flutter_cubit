import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/pages/PostView.dart';
import 'package:flutter_cubit/state_management/PostsCubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Pattern',
      home: BlocProvider<PostsCubit>(
          create: (ctx) => PostsCubit()..getPosts(),
          child: PostView()
      ),
    );
  }
}
