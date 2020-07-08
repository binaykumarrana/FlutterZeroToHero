import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/scaled_tile.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';

class SearchBarGridDemo extends StatelessWidget {
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
            cancellationText: Text(
              "OK",
              style: TextStyle(fontFamily: 'PoppinsSemiBold'),
            ),
            minimumChars: 3,
            crossAxisCount: 2,
            hintText: "Search hint text",
            hintStyle: TextStyle(
              color: Colors.grey[100],
            ),
            textStyle: TextStyle(
              color: Colors.grey[100],
              fontFamily: 'PoppinsSemiBold',
            ),
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            indexedScaledTileBuilder: (int index) => ScaledTile.count(
              index % 3 == 0 ? 2 : 1,
              1,
            ),
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
              return Container(
                height: 50,
                decoration: new BoxDecoration(color: Colors.orange),
                child: ListTile(
                  title: Text(post.title),
                  subtitle: Text(post.description),
                ),
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
