import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:widgetsoftheweek/models/reqres_model.dart';

class FutureBuilderScreen extends StatelessWidget {
  const FutureBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _MyHomeScreen();
  }
}

//----------------------------------------------------------------
Future<ReqResRespuesta> getUsuarios() async {
  final resp = await http.get(Uri.parse('https://reqres.in/api/users'));
  return reqResRespuestaFromJson(resp.body);
}

//----------------------------------------------------------------
class _MyHomeScreen extends StatelessWidget {
  const _MyHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FutureBuilder'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: getUsuarios(),
        builder:
            (BuildContext context, AsyncSnapshot<ReqResRespuesta> snapshot) {
          //print(snapshot.connectionState);
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return _ListaUsuarios(
              usuarios: snapshot.data!.data,
            );
          }
        },
      ),
    );
  }
}

//----------------------------------------------------------------------------
class _ListaUsuarios extends StatelessWidget {
  final List<Usuario> usuarios;
  const _ListaUsuarios({
    Key? key,
    required this.usuarios,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: usuarios.length,
      itemBuilder: (BuildContext context, int index) {
        return FadeInLeft(
          delay: Duration(milliseconds: 200 * (index + 1)),
          duration: const Duration(milliseconds: 200),
          child: ListTile(
              title: Text(
                  '${usuarios[index].lastName} ${usuarios[index].firstName}'),
              subtitle: Text(usuarios[index].email),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(usuarios[index].avatar),
                maxRadius: 40,
              )),
        );
      },
    );
  }
}
