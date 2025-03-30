
VAR sabes_de_la_madre = true
VAR estas_casado = false
VAR saber_de_la_boda = false
VAR hablaron_sobre_habitacion = false
VAR fin_conversacion = false

Hay una chica joven y bella frente a ti.
-> inicio

=== inicio ===
* <i>¿Quien eres?</i>
    Buenas tardes, permítame presentarme, soy la señorita Esparza, es un verdadero placer conocerlo. Que afortunada soy de recibir la visita de un caballero tan distinguido, aunque apreciaría saber los motivos que lo traen a mi humilde alcoba.
    -> motivo
* [Retirarse] -> END

=== motivo ===
* <i>Estoy intentando ayudar a una madre cuyos hijos han desaparecido, busco cualquier tipo de pista.</i>
    -> preocupacion_madre

* <i>Solo estoy dando un paseo. No se como termine aquí.</i>
    -> gracia

=== preocupacion_madre ===
¡Dios mío...! qué pena tan grande. No me puedo ni imaginar el dolor por el que debe estar pasando la pobre mujer. Pero que calamidad tan terrible. Mis pensamientos y plegarias están con ella. Lamentablemente no tengo nada más que ofrecer en ayuda, lo cual me apena tanto, he estado en mi alcoba toda la mañana, me temo que no se nada al respecto.

* <i>No se preocupe, sus palabras y buena voluntad son suficientes. Es una situación complicada.</i>

Ni que lo diga, espero que puedan encontrarlos a prontitud. Es tan loable su proceder. Es en estos momentos cuando debemos unirnos como comunidad y extender nuestra mano a quienes sufren.
->main

=== gracia ===
Pero que afable caballero. No hace falta que intente ocultar su interes, no me molesta en lo absoluto que haya tenido la cortesía de venir a verme, lo encuentro encantador de su parte, esta usted invitado a pasar el tiempo que desee, dentro de lo razonable claro esta.
-> main

=== main ===

+ <i>¿Que es este lugar?</i>
 {hablaron_sobre_habitacion:
    Como le dije anteriormente, esta es mi alcoba. ¿Acaso ya lo olvido?
  - else:
    Jajaja, disculpe mi decoro, pero no pude evitarlo, es usted tan melifluo. Es claro que esta es mi alcoba, sientase bienvenido.
    ~hablaron_sobre_habitacion = true
}
  -> main
  
+ <i>¿Que estas haciendo?</i>
  -> boda
  
+ {saber_de_la_boda} <i>¿Y quien es el novio?</i>
  -> sobre_el_novio_1
  
+ <i>Es hora de que me retire.</i>
  -> ending1  
  
+ {fin_conversacion} <i>Me retiro señorita Esparza, espero volver a verla, que tenga un buen día.</i>
  -> ending2
  

=== boda ===

Oh que maravilla que pregunte. Estoy preparandome para mi boda, pero ¡Qué dicha! ¿no lo cree? Es el día de mañana, en la Catedral a la 1 de la tarde, sera una ceremonia de lo más exquisito, y espero que podamos contar con su presencia, seria todo un honor para mí. ¿No es maravilloso?
~ saber_de_la_boda = true

+<i>Muchas felicidades.</i>

Le agradezco su cortesía caballero. Es un paso trascendental en la vida de toda dama. Más que una celebración, lo que en verdad importa es el compromiso que se asume, la dicha de compartir el porvenir con alguien digno de nuestra estima. Espero que algun día usteded encuentre semejante deleite, si es que no lo ha hecho. ¿O sí?
->casado

=== casado ===

*<i>No me lo parece.</i>

Es una verdadera lástima, mi corazón se encuentra apesadumbrado ante tal noticia, pero estoy segura que el tiempo le permitira disfrutar de tal alegría, en especial tratandose de un caballero tan amable y destacado como usted.
    -> main
    
*<i>Por supuesto, mi esposa me espera en casa.</i>

¡Pero que maravilloso! Es una alegría saber que un magnifico caballero tiene una esposa aun más magnifica, puedo estar segura de ello.
~ estas_casado = true
-> main

=== sobre_el_novio_1 ===

Veo que no puede contener su curiosidad. Es usted tan abierto y sin nada que esconder. Solo he de decir que es un hombre de honor, cuya integridad y nobleza de espiritu han conquistado mi aprecio. Confío en que sabremos construir juntos un hogar lleno de armonía y respeto, si es que le satisface mi respuesta.

+ <i>Suena como toda una personalidad.</i>
-> sobre_el_novio_2

+ <i>Me recuerda a mi amigo Pachuco.</i>

¿Como disculpe?
->main

=== sobre_el_novio_2 ===

Lo es, como me gustaría que lo conociera, afortunadamente podra hacerlo el día de mañana en la boda. Sera tan esplendido, todo tan lleno de beldad y dicha, cada detalle puesto con esmero, cada invitado con su elegancia sutil... Perdoneme, perdi la compostura, y le ruego disculpe mi indiscreción, no es propio de una dama.

+<i>No hay nada que perdonar señorita Esparza.</i>

Es usted tan modesto ante semejante falta. Siendo sincera preferiría que todos fueran de un espiritu tan ligero como el suyo, a veces no puedo evitar pensar que así todo sería mas real, mas genuino.
-> sobre_ella_1

+<i>¿Por que lo dices?</i>

Oh, ¿no se ha dado cuenta?, me he sobrepasado en mis palabras y he caido en la presunción y la vanidad, por favor le ruego las ignore y olvide que alguna vez las dije, cuidare mejor mis modales de ahora en adelante.
-> main

=== sobre_ella_1 ===

*<i>No soy tan maravilloso. Simplemente debes relajarte de vez en cuando.</i>

Eso desearía. Mi madre dice que de hecho lo hago demasiado. Que es impropio de una dama actuar de forma tan libre, tan despreocupada, pero yo no puedo evitar sentirme así la mayor parte del tiempo, no cuando todo es tan hermoso y atractivo, ¿no siente usted una necesidad de salir ahi fuera y ver todo con sus propios ojos? Tocarlo con sus manos y sus pies, sentir el viento, el pasto, el sol del verano.
-> sobre_ella_2

=== sobre_ella_2 ===

*<i>Por supuesto, el mundo es suyo para tomarlo.</i>

Digaselo a mi madre, ella esta convencida de que puedo llegar a pecar de ingenua en ocasiones, ¿pero como puede decir eso? Yo solo quiero conocer un poco más del mundo, de sus personas. Conocer más hombres como usted, o... como mi prometido. Usted ha sido tan bueno y diferente conmigo, ojala todos los caballeros fueran como usted.
-> sobre_ella_3

*<i>¿No sales mucho o sí?</i>

¿Es tan obvio?
-> main

=== sobre_ella_3 ===

*<i>¿A que se refiere? ¿Acaso son malos?</i> 

Oh no para nada, la mayoría de ellos son muy dulces de hecho, el problema es que... talvez no lo crea pero los hombres tienden a enamorarse desesperadamente de mi. 
-> sobre_ella_4

=== sobre_ella_4 ===

*<i>Si lo creo.</i>

Por supuesto yo no tengo ningun problema con ello, en principio, pero hablar con ellos puede ser dificil, empiezan a hacer cosas extrañas, la mayoría de ellos me propone matrimonio en cuanto me conoce ¿Puede creerlo? 
-> sobre_ella_5

=== sobre_ella_5 ===

*<i>Tambien lo creo.</i>

{estas_casado:
    Por eso es maravilloso que usted este casado, así como lo voy a estar yo el día de mañana.
    -> sobre_ella_6
  - else:
    Es maravilloso que usted no me haya propuesto matrimonio.
    -> sobre_ella_8
}

=== sobre_ella_6 ===

*<i>¿Enserio?¿Porque?</i>

Bueno los hombres casados nunca me piden matrimonio, pues ya estan casados, ¿no es esplendido? Así las cosas no pueden tomar un rumbo impredecible, ademas ahora me ahorraría la pena de tener que explicarles que yo ya estoy casada, aunque no se como se lo vayan a tomar, pues apenas mañana empezare a estarlo. De cualquier manera, es maravilloso que usted no me haya propuesto matrimonio.

-> sobre_ella_7 

=== sobre_ella_7 ===

*<i>No se preocupe, yo nunca le pediría matrimonio, pues estoy muy casado.</i>

Oh sigue usted siendo tan encantador. 

-> sobre_ella_8

=== sobre_ella_8 ===

Como le decia, los hombres parecen enloquecer a mi alrededor, tambien ha dado pie a ciertos accidentes.

*<i>¿Accidentes? ¿A que se refiere?</i>

 Oh nada grave, nunca ha pasado de un pequeño susto para el desdichado caballero, vera, en cuanto mi madre los ve no puede evitar ponerse un poco, violenta. Una vez le arrojo una maceta a uno de ellos. El infortunado quedo todo lleno de tierra, pero se veía tan contento.
 
 -> sobre_ella_9

=== sobre_ella_9 ===

*<i>Parece que su madre es una mujer complicada.</i>

Vaya que lo es. ¡Por todos los cielos! Por favor le suplico ignore lo que acabo de decir.

-> sobre_ella_10

=== sobre_ella_10 ===

*<i>No se preocupe.</i>

Olvido con quien estoy hablando, se que podemos hablar con libertad. Es solo que mi madre, a quien amo y respeto con todo mi corazón, en ocasiones puede ser un poco exhaustiva, a veces pienso que si por ella fuera, yo debería permanecer aquí por toda la eternidad. Fue un milagro del cielo que aprobara este matrimonio, creo que es lo unico que con toda certeza le permitiría dejarme ir. No puedo esperar al día de mañana.

-> sobre_ella_11

=== sobre_ella_11 ===

*<i>Le deseo toda la felicidad en su matrimonio.</i>

¡Es usted tan amable caballero! Ojala todos los hombres fueran de un espiritu tan gentil y modesto como el suyo. Aprecio mucho sus palabras.

~ fin_conversacion = true

-> main

=== ending1
Que tenga un buen día caballero, es usted siempre bienvenido.
-> END

=== ending2
Por supuesto caballero, ha sido todo un placer conversar con usted, es usted siempre bienvenido y ansío su proxima visita, buenos días.
-> END














