import 'package:bloc_flutter/api_fetch/feature/posts/postbloc/post_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostWrapper extends StatefulWidget {
  const PostWrapper({super.key});

  @override
  State<PostWrapper> createState() => _PostWrapperState();
}

class _PostWrapperState extends State<PostWrapper> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => PostBloc(),
      )
    ], child: PostPage());
  }
}

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fetch Api Bloc"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(children: []),
      ),
    );
  }
}
