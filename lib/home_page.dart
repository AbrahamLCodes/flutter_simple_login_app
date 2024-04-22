import 'package:flutter/material.dart';
import 'package:simple_login_app/custom_widgets/animated_alert_dialog.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final focusNode = FocusNode();
  final _tfInstanciaController = TextEditingController();
  var selectedDate = DateTime.now();
  var selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => focusNode.unfocus(),
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: const Text('Micromarket Monitor'),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () => onLogOutPressed(context),
                  icon: const Icon(
                    Icons.logout,
                    color: Colors.red,
                  ))
            ],
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 130,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            focusNode: focusNode,
                            keyboardType: TextInputType.number,
                            controller: _tfInstanciaController,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black),
                            decoration: const InputDecoration(
                                suffixIcon: Icon(Icons.place),
                                hintText: "Instancia",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                )),
                          ),
                        ),
                      ),
                      Wrap(children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "${selectedDate.toLocal()}".split(' ')[0],
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    ElevatedButton.icon(
                                      icon: const Icon(
                                        Icons.date_range,
                                        color: Colors.white,
                                        size: 20.0,
                                      ),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.grey,
                                          foregroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      onPressed: () => _selectDate(context),
                                      label: const Text('Fecha'),
                                    )
                                  ],
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  children: [
                                    Text(
                                      selectedTime.format(context),
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    ElevatedButton.icon(
                                        icon: const Icon(
                                          Icons.lock_clock,
                                          color: Colors.white,
                                          size: 20.0,
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.grey,
                                            foregroundColor: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        onPressed: () => _selectTime(context),
                                        label: const Text('Hora'))
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ])
                    ],
                  ),
                  ElevatedButton.icon(
                    icon: const Icon(
                      Icons.update,
                      color: Colors.white,
                      size: 20.0,
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      // Button onPressed action
                    },
                    label: const Text('Actualizar'),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Detalles del ultimo estatus",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Fecha: ",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16)),
                            Text("24-05-2024 15:32:11",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        Row(
                          children: [
                            Text("Memoria ram en uso(mb): ",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16)),
                            Text("1232mb",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        Row(
                          children: [
                            Text("Memoria ram disponible: ",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16)),
                            Text("32%",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        Row(
                          children: [
                            Text("Versión: ",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16)),
                            Text("178",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        Row(
                          children: [
                            Text("Instancia: ",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16)),
                            Text("1",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Datos generales",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Cantidad de ventas: ",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16)),
                            Text("57",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        Row(
                          children: [
                            Text("Total de la venta: ",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16)),
                            Text("4200",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        Row(
                          children: [
                            Text("Intervalo entre Estatus: ",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16)),
                            Text("3 minutos",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }

  void onLogOutPressed(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AnimatedDialog();
      },
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (pickedTime != null && pickedTime != selectedTime) {
      setState(() {
        selectedTime = pickedTime;
      });
    }
  }
}
