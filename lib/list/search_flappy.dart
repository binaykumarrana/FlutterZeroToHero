import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';

class SearchBarDemo extends StatelessWidget {
  Future<List<Post>> search(String search) async {
    await Future.delayed(Duration(seconds: 2));
    return List.generate(search.length, (int index) {
      return Post(
        "Title : $search $index",
        "Description :$search $index",
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SearchBar<Post>(
            debounceDuration: Duration(milliseconds: 200),
            cancellationText: Text("OK",style: TextStyle(fontFamily: 'PoppinsSemiBold'),),
            minimumChars: 3,
            loader: Center(
              child: Text("loading..."),
            ),
            onError: (error) {
              return Center(
                child: Text("Error: $error"),
              );
            },
            emptyWidget: Center(
              child: Text("No result..."),
            ),
            searchBarStyle: SearchBarStyle(
              backgroundColor: Colors.blue[300],
              padding: EdgeInsets.all(12),
              borderRadius: BorderRadius.circular(10),
            ),
            onSearch: search,
            onItemFound: (Post post, int index) {
              return ListTile(
                title: Text(post.title),
                subtitle: Text(post.description),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Post {
  final String title;
  final String description;

  Post(this.title, this.description);
}
