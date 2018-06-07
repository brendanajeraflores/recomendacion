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

playa(cancun).
playa(cabos).
playa(acapulco).
playa(miami).
playa(hawaii).

ruinas(cancun).

fiestas(cancun).
fiestas(cabos).
fiestas(acapulco).
fiestas(cdmx).
fiestas(newyork).
fiestas(paris).
fiestas(miami).
fiestas(hawaii).

ciudad(newyork).
ciudad(cdmx).
ciudad(paris).
ciudad(miami).

seleccion(playa,_,Ciudad):-playa(Ciudad).
seleccion(ruinas,_,Ciudad):-ruinas(Ciudad).
seleccion(fiestas,_,Ciudad):-fiestas(Ciudad).
seleccion(ciudad,_,Ciudad):-ciudad(Ciudad).

descripcion(cancun):-
write('Cancun es caracterizado por sus hermosas playas:'),nl,
write('Su arena de coral es fina y blanca'),nl,
write('Su mar de aguas transparentes posee un matiz impresionante de azules que va desde el esmeralda hasta el turquesa'),nl,
write('Cuenta con ruinas cerca como Tulum y Cobá'),nl,
write('Su vida nocturna es de las mas divertidas'),nl.

descripcion(newyork):-
write('Nueva York es uno de los principales centros mundiales de comercio y finanzas'),nl,
write('Se encuentra la estatua de la libertad'),nl,
write('La ciudad ha concentrado muchos de los edificios más altos del mundo como el Empire State'),nl,
write('El clima en Nueva York la mayoría del tiempo es frío'),nl.

descripcion(cabos):-
write('Los Cabos se encuentra situado en el extremo sur de la Peninsula de Baja Clifornia'),nl,
write('Cuenta con lo ideal para cualquier tipo de viaje desde lo más relajante hasta lo más aventureroi'),nl,
write('Es caracterizado por una formación rocosa natural en donde se une el mar de Cortes y el Oceano Pacifico'),nl,
write('Los eventos llevados en la región son una experiencia libre de estrés de principio a fin'),nl.

descripcion(acapulco):-
write('Acapulco es el destino playero con un bello entorno natural, arena dorada, clima tropical, aguas calidad.'),nl,
write('Es caracterizado por La Quebrado una piedra saliente de 35 metros de altura a la orilla del mar donde podrás ver a los clavadistas caer hacia la noche iluminada por antorchas.'),nl,
write('En Acapulco convive la cultura nocturna con las playas más contrastantes, donde encontrarás donde nadar, dar una caminata o simplemente ver la puesta de sol.'),nl.

descripcion(cdmx):-
write('La Ciudad de México es uno de los destinos más disfrutables del mundo.'),nl,
write('Visita sus barrios inundados del art nouveau y art déco'),nl,
write('Disfruta su oferta gastronómica y piérdete por las calles de la ciudad con más museos del mundo.'),nl.

descripcion(paris):-
write('París es la capital de Francia y una de las grandes ciudades europeas.'),nl,
write('Es para muchos el destino turístico más romántico y popular de todo el planeta.'),nl,
write('Suele ser denominada la Ciudad del Amor, debido al encanto y romanticismo que desprende pasear por sus calles.'),nl.

descripcion(miami):-
write('Miami, descrita como "la única ciudad del mundo que comenzó como una fantasía".'),nl,
write('Cuenta con un clima subtropical, un puerto natural protegido y unas playas espectaculares.'),nl,
write('se ha convertido en un centro internacional de comercio y finanzas'),nl.

descripcion(hawaii):-
write('Hawaii, es una de las playas mas hermosas de Estados Unidos'),nl,
write('rodeada de puro océano pacifico y con formación proveniente de islas circundantes.'),nl,
write('Hawaii es el lugar perfecto para disfrutar del sol, la playa, actividades deportivas acuáticas y paisajes'),nl.

separa :- write_ln(''), write('********************************************************************'),write_ln('').

imprimir(Ciudad):-separa,descripcion(Ciudad),separa.

vacaciones(Ciudad,Mes,W):- seleccion(W,Mes,Ciudad), imprimir(Ciudad).
vacaciones(Ciudad,Mes,X,Y):- seleccion(X,Mes,Ciudad), seleccion(Y,Mes,Ciudad), imprimir(Ciudad).
vacaciones(Ciudad,Mes,X,Y,Z):- seleccion(X,Mes,Ciudad), seleccion(Y,Mes,Ciudad), seleccion(Z,Mes,Ciudad), imprimir(Ciudad).
vacaciones(Ciudad,Mes,X,Y,Z,T):- seleccion(X,Mes,Ciudad), seleccion(Y,Mes,Ciudad), seleccion(Z,Mes,Ciudad), seleccion(T,Mes,Ciudad), imprimir(Ciudad).

ayuda:- nl, write('******************************************************'),nl,
write('Sistema de recomendación para salir de vacaciones'),nl,nl,
write('escriba los datos de la siguiente manera:'),nl,
write('     vacaciones(Ciudad,Mes,Preferencias).'),nl,
write('En el campo preferencias se indica si se quiere un lugar con playa,'),nl,
write('si se quiere una ciudad, si se quiere un lugar con ruinas o un lugar para ir de fiesta'),nl,
write('  Pulse enter detrás de cada resultado para ver todas las posibilidades.'),nl.
