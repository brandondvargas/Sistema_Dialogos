
VAR sabes_de_la_madre = true
VAR estas_casado = false
VAR saber_de_la_boda = false
VAR hablaron_sobre_habitacion = false
VAR fin_conversacion = false

Hay un joven extragavante y animado frente a ti.
-> inicio

=== inicio ===
* <i>¿Quien eres?</i>
    Que tal muchachito, soy Arnulfo Parra a su servicio jejeje. Maestro de profesión, y corredor de corazón.
    ->main
* [Retirarse] -> END

=== main ===
  
+ <i>Es hora de que me retire.</i>
  -> ending1  
  
+ {fin_conversacion} <i>Me retiro señorita Esparza, espero volver a verla, que tenga un buen día.</i>
  -> ending2


=== ending1
Que tenga un buen día caballero, es usted siempre bienvenido.
-> END

=== ending2
Por supuesto caballero, ha sido todo un placer conversar con usted, es usted siempre bienvenido y ansío su proxima visita, buenos días.
-> END














