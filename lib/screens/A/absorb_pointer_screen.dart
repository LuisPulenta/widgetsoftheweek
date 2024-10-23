import 'package:flutter/material.dart';

class AbsorbPointerScreen extends StatelessWidget {
  const AbsorbPointerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _MyHomeScreen();
  }
}

//-------------------------------------------------------------------------
class _MyHomeScreen extends StatelessWidget {
  const _MyHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AbsorbPointer'),
        centerTitle: true,
      ),
      body: AbsorbPointer(
        absorbing: true,
        child: SafeArea(
          child: Column(
            children: [
              const _CustomOutlinedButton(
                width: double.infinity,
                height: 80,
              ),
              Row(
                children: const [
                  Expanded(
                    flex: 1,
                    child: _CustomOutlinedButton(
                      width: double.infinity,
                      height: 100,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: _CustomOutlinedButton(
                      width: double.infinity,
                      height: 100,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                  ),
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text("ListTile ${index + 1}"),
                      );
                    },
                  ),
                ),
              ),
              Row(
                children: const [
                  Expanded(
                    flex: 3,
                    child: _CustomOutlinedButton(
                      width: double.infinity,
                      height: 50,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: _CustomOutlinedButton(
                      width: double.infinity,
                      height: 50,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//---------------------------------------------------------------------------
class _CustomOutlinedButton extends StatelessWidget {
  final double width;
  final double height;
  const _CustomOutlinedButton({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          SizedBox(
            width: width,
            height: height,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Botón"),
            ),
          ),
        ],
      ),
    );
  }
}
