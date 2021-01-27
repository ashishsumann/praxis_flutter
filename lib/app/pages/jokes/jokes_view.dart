import 'package:flutter/material.dart';
import 'package:praxis_flutter/domain/entities/joke.dart';

class JokesPage extends StatelessWidget {
  final List<Joke> jokes;

  JokesPage(this.jokes);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Praxis"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: jokes.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                jokes[index].jokeText,
                style: TextStyle(fontSize: 16),
              ),
            );
          },
        ),
      ),
    );
  }
}
