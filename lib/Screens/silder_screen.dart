import 'package:components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 200;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text('Sliders & checks'),
      ),
      body: Column(
        children: [
          
          Slider.adaptive(
            min: 100,
            max: 300,
            activeColor: AppTheme.primaryColor,
            //divisions: 10,
            value: _sliderValue, 
            onChanged: _sliderEnable ? (value) {
              _sliderValue = value;
              setState(() {});
            } 
            : null
          ),

          Checkbox(
            value: _sliderEnable, 
            onChanged: (value) {
              _sliderEnable = value ?? true;
              setState(() {});
            }
          ),

          CheckboxListTile(
            activeColor: AppTheme.primaryColor,
            title: const Text('Habilitar slider'),
            value: _sliderEnable, 
            onChanged: ((value) => setState(() => _sliderEnable = value ?? true)),
          ),

          Switch(
            value: _sliderEnable, 
            onChanged: ((value) => setState(() => _sliderEnable = value)),
          ),

          SwitchListTile.adaptive(activeColor: AppTheme.primaryColor,
            title: const Text('Habilitar slider'),
            value: _sliderEnable, 
            onChanged: ((value) => setState(() => _sliderEnable = value)),
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://images.wikidexcdn.net/mwuploads/esssbwiki/c/c8/latest/20210423032433/Ren_Amamiya_P5R.png'), 
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),

          const AboutListTile(
            applicationName: "Components App",
            applicationIcon: FlutterLogo(),
            applicationVersion: "1.0.0",
            aboutBoxChildren: [
              Text("Esta aplicación esta hecha para aprender acerca de distintos componentes de Flutter")
            ],
          )

        ],
      ),
    );
  }
}