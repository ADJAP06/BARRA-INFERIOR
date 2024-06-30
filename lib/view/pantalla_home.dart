
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_barra_inferior/view/pantalla_users.dart';

class PantallaHome extends StatefulWidget {

  const PantallaHome({super.key});

  @override 
  State<PantallaHome> createState()=> _PantallaHomeState();
}

class _PantallaHomeState extends State<PantallaHome>{

int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        
          
            CachedNetworkImage( 
              imageUrl: "https://static.wikia.nocookie.net/jujutsu-kaisen/images/b/bd/Toji_Fushiguro5.png/revision/latest?cb=20201008034655&path-prefix=es", 
              placeholder: (context, url) => const CircularProgressIndicator(), 
              errorWidget: (context, url, error) => const Icon(Icons.error), 
              ), 

             ElevatedButton( 
                onPressed: () { 
                  Navigator.pushReplacement(
                      context, 
                      MaterialPageRoute( 
                          builder: (context) => const PantallaUsers())); 
                }, 
                child: const Text('Primera Pantalla')) 
    
        ],
      ),
    );
  }
}
