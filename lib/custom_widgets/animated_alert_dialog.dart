import 'package:flutter/material.dart';

class AnimatedDialog extends StatefulWidget {
  @override
  _AnimatedDialogState createState() => _AnimatedDialogState();
}

class _AnimatedDialogState extends State<AnimatedDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: AlertDialog(
        title: const Text('Cerrar sesión'),
        content: const Text('La sesión actual se perderá ¿Deseas continuar?'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              _animationController.reverse().then((_) {
                Navigator.of(context).pop();
              });
            },
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () {
              _animationController.reverse().then((_) {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacementNamed('/login');
              });
            },
            child: const Text('Continuar'),
          ),
        ],
      ),
    );
  }
}
