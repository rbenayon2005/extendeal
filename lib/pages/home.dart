import 'package:extendeal_app/utils/responsive.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();

  _buildTextField(double _width, String _hint, IconData _icon) {
    return SizedBox(
      width: _width,
      child: Container(
        alignment: Alignment.centerLeft,
        height: 60.0,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.blue,
          ),
          decoration: InputDecoration(
            prefixIcon: Icon(
              _icon,
              color: Colors.white,
            ),
            hintText: _hint,
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            fillColor: Colors.white,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
                width: 2.0,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            height: responsive.height,
            width: responsive.width,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: responsive.wp(60),
                  child: SvgPicture.asset('assets/images/logo-white.svg'),
                ),
                _buildTextField(
                  responsive.wp(80),
                  'Email',
                  Icons.email_outlined,
                ),
                _buildTextField(
                  responsive.wp(80),
                  'Contraseña',
                  Icons.lock_outline,
                ),
                Container(
                  width: responsive.wp(80),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            '¿Olvidate tu contraseña?',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: responsive.wp(30),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFFE66E19),
                            ),
                          ),
                          onPressed: () {},
                          child: Text('ENTRAR'),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
