% Autor: Brenda Najera Flores
% Fecha: 26/05/2018


lugar(cancun).
lugar(cabos).
lugar(acapulco).
lugar(cdmx).
lugar(newyork).
lugar(paris).
lugar(miami).
lugar(hawaii).

%playa(cancun).
playa(cabos).
%playa(acapulco).
%playa(miami).
%playa(hawaii).

ruinas(cancun).

%fiestas(cancun).
%fiestas(cabos).
fiestas(acapulco).
%fiestas(cdmx).
%fiestas(newyork).
%fiestas(paris).
%fiestas(miami).
%fiestas(hawaii).

ciudad(newyork).
%ciudad(cdmx).
%ciudad(paris).
%ciudad(miami).

seleccion(playa,_,Ciudad):-playa(Ciudad).
seleccion(ruinas,_,Ciudad):-ruinas(Ciudad).
seleccion(fiestas,_,Ciudad):-fiestas(Ciudad).
seleccion(ciudad,_,Ciudad):-ciudad(Ciudad).

descripcion(cancun):-
write('Cancun es caracterizado por sus hermosas playas:'),
write(' Su arena de coral es fina y blanca.'),
write(' Su mar de aguas transparentes posee un matiz impresionante de azules que va desde el esmeralda hasta el turquesa.'),
write(' Cuenta con ruinas cerca como Tulum y Coba.'),
write(' Su vida nocturna es de las mas divertidas.').

descripcion(newyork):-
write('Nueva York es uno de los principales centros mundiales de comercio y finanzas. '),
write('Se encuentra la estatua de la libertad. '),
write('La ciudad ha concentrado muchos de los edificios mas altos del mundo como el Empire State. '),
write('El clima en Nueva York la mayoria del tiempo es frio.').

descripcion(cabos):-
write('Los Cabos se encuentra situado en el extremo sur de la Peninsula de Baja California. '),
write('Cuenta con lo ideal para cualquier tipo de viaje desde lo mas relajante hasta lo mas aventurero. '),
write('Es caracterizado por una formacion rocosa natural en donde se une el mar de Cortes y el Oceano Pacifico. '),
write('Los eventos llevados en la region son una experiencia libre de estres de principio a fin.').

descripcion(acapulco):-
write('Acapulco es el destino playero con un bello entorno natural, arena dorada, clima tropical, aguas calidad. '),
write('Es caracterizado por La Quebrada una piedra saliente de 35 metros de altura a la orilla del mar donde podras ver a los clavadistas caer hacia la noche iluminada por antorchas. '),
write('En Acapulco convive la cultura nocturna con las playas mas contrastantes, donde encontraras donde nadar, dar una caminata o simplemente ver la puesta de sol.').

descripcion(cdmx):-
write('La Ciudad de México es uno de los destinos más disfrutables del mundo.'),
write('Visita sus barrios inundados del art nouveau y art déco'),
write('Disfruta su oferta gastronómica y piérdete por las calles de la ciudad con más museos del mundo.').

descripcion(paris):-
write('París es la capital de Francia y una de las grandes ciudades europeas.'),
write('Es para muchos el destino turístico más romántico y popular de todo el planeta.'),
write('Suele ser denominada la Ciudad del Amor, debido al encanto y romanticismo que desprende pasear por sus calles.').

descripcion(miami):-
write('Miami, descrita como "la única ciudad del mundo que comenzó como una fantasía".'),
write('Cuenta con un clima subtropical, un puerto natural protegido y unas playas espectaculares.'),
write('se ha convertido en un centro internacional de comercio y finanzas').

descripcion(hawaii):-
write('Hawaii, es una de las playas mas hermosas de Estados Unidos'),
write('rodeada de puro océano pacifico y con formación proveniente de islas circundantes.'),
write('Hawaii es el lugar perfecto para disfrutar del sol, la playa, actividades deportivas acuáticas y paisajes').

separa :- write('********************************************************************').

%imprimir(Ciudad):-separa,descripcion(Ciudad),separa.
imprimir(Ciudad):-descripcion(Ciudad).

vacaciones(Ciudad,Mes,W):- seleccion(W,Mes,Ciudad), imprimir(Ciudad).
vacaciones(Ciudad,Mes,X,Y):- seleccion(X,Mes,Ciudad), seleccion(Y,Mes,Ciudad), imprimir(Ciudad).
vacaciones(Ciudad,Mes,X,Y,Z):- seleccion(X,Mes,Ciudad), seleccion(Y,Mes,Ciudad), seleccion(Z,Mes,Ciudad), imprimir(Ciudad).
vacaciones(Ciudad,Mes,X,Y,Z,T):- seleccion(X,Mes,Ciudad), seleccion(Y,Mes,Ciudad), seleccion(Z,Mes,Ciudad), seleccion(T,Mes,Ciudad), imprimir(Ciudad).

ayuda:- nl, write('******************************************************'),nl,
write('Sistema de recomendación para salir de vacaciones'),nl,nl,
write('escriba los datos de la siguiente manera:'),nl,
write('     vacaciones(Ciudad,Mes,Preferencias).'),nl,nl,
write('  Pulse enter detrás de cada resultado para ver todas las posibilidades.'),nl.
