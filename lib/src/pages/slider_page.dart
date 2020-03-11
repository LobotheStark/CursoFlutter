import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider')
      ),
      body: Container(
        padding: EdgeInsets.only(top:50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            Expanded(
              child: _crearImagen()
            ),
          ],
        ),
      ),
      
    );
  }

  Widget _crearSlider() {

    return Slider(
      activeColor: Colors.indigo,
      label: 'Tamaño de la imagen',
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (valor) {
        setState(() => _valorSlider = valor);
        
      }
      );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://i.pinimg.com/originals/f5/9f/aa/f59faa929c29401ffa67a41475f23330.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}