import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/model/Post.dart';
import 'package:flutter_cubit/state_management/PostsCubit.dart';


class PostView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Testing"),
        ),
        body: BlocBuilder<PostsCubit,List<dynamic>>(
          builder: (ctx,posts){
            if (posts.isEmpty) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            return ListView.builder(itemBuilder: (context,index){
              return Card(child: ListTile(title: Text(posts[index].title),),);
            },itemCount: posts.length,);
          },
        )
    );
  }
}
