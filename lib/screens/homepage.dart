import 'package:bloco_de_notas/screens/taskpage.dart';
import 'package:bloco_de_notas/widgets.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          color: Color(0xFFF6F6F6),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 32,
                      top: 32,
                    ),
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        TaskCardWidget(
                          title: 'Get Started!',
                          desc:
                              'Olá! Este é um exemplo de anotação! Você pode editar ou excluir. Clique no botão (+) para adiciornar uma nova anotação,',
                        ),
                        TaskCardWidget(
                          title: 'Unamed task',
                          desc: 'Bla bla bla',
                        ),
                        TaskCardWidget(
                          title: 'Unamed task',
                          desc: 'Bla bla bla',
                        ),
                        TaskCardWidget(
                          title: 'Unamed task',
                          desc: 'Bla bla bla\nble ble ble\nbli bli bli',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 24,
                right: 0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Taskpage()));
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xFF7349FE),
                        borderRadius: BorderRadius.circular(20)),
                    child: Image(
                      image: AssetImage('assets/images/add_icon.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
