
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/configuration/connection.dart';
import 'package:flutter_cubit/model/Post.dart';

class PostsCubit extends Cubit<List<Post>>{
  final _service = Connection();

  PostsCubit() : super([]);

  void getPosts() async => emit(await _service.getPosts());
}