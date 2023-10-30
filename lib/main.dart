import 'package:flutter/material.dart';
import 'package:projects_dart/cusrom_icon.dart';

void main() => runApp(MyApp());
class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 20;
    Path path = Path();
    path.moveTo(radius, 0);
    path.lineTo(size.width-radius, 0);
    path.arcToPoint(Offset(size.width, radius), radius: Radius.circular(radius));
    path.lineTo(size.width, size.height - radius);
    path.arcToPoint(Offset(size.width - radius, size.height),radius: Radius.circular(radius));
    path.lineTo(radius, size.height);
    path.arcToPoint(Offset(0, size.height - radius), radius: Radius.circular(radius), clockwise: true);
    path.lineTo(0, radius);
    path.arcToPoint(Offset(radius, 0), radius: Radius.circular(radius));
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.selected,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.deepPurple;
      }
      return Colors.white;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.blueGrey[0]),
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Авторизация', style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontFamily: 'OpenSans'
                      ),),
                      Text(' '),
                      Container(
                        width: 420,
                        height: 473,
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 12.0,
                              blurStyle: BlurStyle.outer,
                              offset: Offset(0, 4), // Shadow position
                            ),
                          ],
                        ),
                      ),
                      Text(' '),
                      Text('Все сайты семейства *Lib связаны и имеют один аккаунт.',style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                          fontFamily: 'OpenSans'
                      ),),
                      Row(
                        children: [
                          Text(' Для facebook или twitter вы можете воспользоваться ' ,textAlign: TextAlign.right,  style: TextStyle(
                            height: 2,
                            fontSize: 13,
                            color: Colors.grey,
                            fontFamily: 'OpenSans',
                          ),),
                          Text('          ')
                        ],
                      ),
                      Row(
                        children: [
                          Text('проверенным' ,textAlign: TextAlign.right,  style: TextStyle(
                            height: 1,
                            fontSize: 13,
                            color: Colors.grey,
                            fontFamily: 'OpenSans',
                          ),),
                          TextButton(onPressed: (){}, child: Text('vpn')),
                          Text('                                                                ')
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.home),color: Colors.grey, ),
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.grey,
                              textStyle: const TextStyle(fontSize: 20),
                            ),
                            onPressed: () {},
                            child: Text('Вход'),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.grey,
                              textStyle: const TextStyle(fontSize: 20),
                            ),
                            onPressed: () {},
                            child: Text('Регистрация'),
                          ),
                          Text('                                           ')
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 368,
                              height: 0.5,
                              padding: EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),

                              ),
                            )

                          ]
                      ),
                      Row(
                        children: [
                          Text(''),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Вход через социальные сети', style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontFamily: 'OpenSans'
                          ),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 30.0,
                              width: 80.0,
                              child: IconButton(
                                color: Colors.indigo,
                                icon: Icon(CusromIcon.facebook, size: 18.0, ),
                                onPressed:(){},
                              )
                          ),
                          SizedBox(
                              height: 30.0,
                              width: 80.0,
                              child: IconButton(
                                color: Colors.blueAccent,
                                icon: Icon(CusromIcon.twitter, size: 18.0, ),
                                onPressed:(){},
                              )
                          ),
                          SizedBox(
                              height: 30.0,
                              width: 80.0,
                              child: IconButton(
                                color: Colors.red,
                                icon: Icon(CusromIcon.gplus, size: 18.0, ),
                                onPressed:(){},
                              )
                          ),
                          SizedBox(
                              height: 30.0,
                              width: 80.0,
                              child: IconButton(
                                color: Colors.blue,
                                icon: Icon(CusromIcon.vk, size: 18.0, ),
                                onPressed:(){},
                              )
                          ),
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 157,
                              height: 0.5,
                              padding: EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Text('    или    ', style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                fontFamily: 'OpenSans'
                            ),),
                            Container(
                              width: 157,
                              height: 0.5,
                              padding: EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),

                              ),
                            )

                          ]
                      ),
                      Row(
                        children: [
                          Text('')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Вход через никнейм или email', style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontFamily: 'OpenSans'
                          ),),
                        ],
                      ),
                      Row(
                        children: [
                          Text('')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 40.0,
                              width: 368.0,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Никнейм или email',
                                    prefixIcon: Icon(Icons.person)

                                ),
                              ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Text('')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40.0,
                            width: 368.0,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Пароль',
                                  prefixIcon: Icon(Icons.lock)

                              ),
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Text('')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CheckboxExample(),
                          Text('Запомнить меня                                                                    ')
                        ],
                      ),
                      Row(
                        children: [
                          Text('')
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 368,
                              height: 0.5,
                              padding: EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),

                              ),
                            )

                          ]
                      ),
                      Row(
                        children: [
                          Text('')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 32.0,
                            width: 368.0,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.deepPurple[400],
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.all(16.0),
                                textStyle: TextStyle(fontSize: 15),
                              ),
                              onPressed: () {},
                              child: Text('Войти'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('')
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Вы забыли пароль?', style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontFamily: 'OpenSans'
                          ),),
                          TextButton(onPressed: (){}, child: Text('Восстановить')),
                          Text('                                 ')
                        ],
                      ),
                    ],
                  )
            )
          ],
        ),
      ),
    );
  }

}

/*Text('da228', style: TextStyle(
fontSize: 200,
color: Colors.red,
fontFamily: 'AlumniSansCollegiateOne'
),)

TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.orangeAccent,
                padding: const EdgeInsets.all(16.0),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: Text('Click on me'),
          ),

ElevatedButton(onPressed: (){}, child: Text('Click'),style: TextButton.styleFrom(
            foregroundColor: Colors.orangeAccent,
            padding: const EdgeInsets.all(16.0),
            textStyle: const TextStyle(fontSize: 20),
          ),)



Image(
            image: AssetImage('assets/bojkisser-768x512.jpg')
            //image: NetworkImage('https://steamuserimages-a.akamaihd.net/ugc/2050874769600821659/41E688715AA8E19E07F6A8C37AC9450A204C4975/?imw=512&&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false'),
          )


Container(
            color: Colors.deepOrange,
            child: Text('hueta'),
            margin: EdgeInsets.fromLTRB(10.0, 15.0, 20.0, 30.0),
            padding: EdgeInsets.fromLTRB(10.0, 15.0, 20.0, 30.0),
          ),


class Widget033 extends StatefulWidget{
  const Widget033({Key? key}):super(key: key);

  @override
  State<Widget033> createState() => _Widget033State();
}
class _Widget033State extends State<Widget033>{
  bool? isChecked = false;

  @override
  Widget build(BuildContext context){
    return Center(
      child: Checkbox(
        value: isChecked,
        activeColor: Colors.cyan,
        tristate: true,
        onChanged: (newBool){
          setState(() {
            isChecked = newBool;
          });
        },
      ),
    );
  }
}




*/
