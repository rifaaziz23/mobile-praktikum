import 'package:flutter/material.dart';

import 'article_model.dart';
import 'api_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Aplikasi Berita',
      debugShowCheckedModeBanner: false,
      home: BeritaScreen(),
    );
  }
}

class BeritaScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<BeritaScreen> createState() => _BeritaScreenState();
}

class _BeritaScreenState extends State<BeritaScreen> {
  late Future<List<Article>> _articlesFuture;

  @override
  void initState() {
    super.initState();
    _articlesFuture = ApiService().fetchArticles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Aplikasi Berita')),
      body: FutureBuilder(
        future: _articlesFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final articles = snapshot.data!;
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                final article = articles[index];
                return Card(
                  child: ListTile(
                    leading: article.urlToImage != null
                        ? Image.network(
                            article.urlToImage!,
                            errorBuilder: (_, _, _) =>
                                const Icon(Icons.broken_image),
                          )
                        : const Icon(Icons.image),
                    title: Text(article.title),
                    subtitle: Text(
                      article.description ?? 'Tidak ada deskripsi',
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(child: Text("Terjadi Kesalahan"));
          }
        },
      ),
    );
  }
}
