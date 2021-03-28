import 'dart:convert';
import 'package:flutter_cubit/model/Post.dart';
import 'package:http/http.dart' as http;

class Connection{
  final _url="jsonplaceholder.typicode.com";

  Future<List<Post>> getPosts() async{
    try{
      final uri = Uri.https(_url,'/posts');
      final res = await http.get(uri);
      final list = json.decode(res.body) as List;
      final posts = list.map((post) => Post.fromJson(post)).toList();
      return posts;
    }catch(e){
      throw e;
    }
  }


}