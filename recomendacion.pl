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
write('Cuenta con ruinas cerca como Tulum y Cob�'),nl,
write('Su vida nocturna es de las mas divertidas'),nl.

descripcion(newyork):-
write('Nueva York es uno de los principales centros mundiales de comercio y finanzas'),nl,
write('Se encuentra la estatua de la libertad'),nl,
write('La ciudad ha concentrado muchos de los edificios m�s altos del mundo como el Empire State'),nl,
write('El clima en Nueva York la mayor�a del tiempo es fr�o'),nl.

descripcion(cabos):-
write('Los Cabos se encuentra situado en el extremo sur de la Peninsula de Baja Clifornia'),nl,
write('Cuenta con lo ideal para cualquier tipo de viaje desde lo m�s relajante hasta lo m�s aventureroi'),nl,
write('Es caracterizado por una formaci�n rocosa natural en donde se une el mar de Cortes y el Oceano Pacifico'),nl,
write('Los eventos llevados en la regi�n son una experiencia libre de estr�s de principio a fin'),nl.

descripcion(acapulco):-
write('Acapulco es el destino playero con un bello entorno natural, arena dorada, clima tropical, aguas calidad.'),nl,
write('Es caracterizado por La Quebrado una piedra saliente de 35 metros de altura a la orilla del mar donde podr�s ver a los clavadistas caer hacia la noche iluminada por antorchas.'),nl,
write('En Acapulco convive la cultura nocturna con las playas m�s contrastantes, donde encontrar�s donde nadar, dar una caminata o simplemente ver la puesta de sol.'),nl.

descripcion(cdmx):-
write('La Ciudad de M�xico es uno de los destinos m�s disfrutables del mundo.'),nl,
write('Visita sus barrios inundados del art nouveau y art d�co'),nl,
write('Disfruta su oferta gastron�mica y pi�rdete por las calles de la ciudad con m�s museos del mundo.'),nl.

descripcion(paris):-
write('Par�s es la capital de Francia y una de las grandes ciudades europeas.'),nl,
write('Es para muchos el destino tur�stico m�s rom�ntico y popular de todo el planeta.'),nl,
write('Suele ser denominada la Ciudad del Amor, debido al encanto y romanticismo que desprende pasear por sus calles.'),nl.

descripcion(miami):-
write('Miami, descrita como "la �nica ciudad del mundo que comenz� como una fantas�a".'),nl,
write('Cuenta con un clima subtropical, un puerto natural protegido y unas playas espectaculares.'),nl,
write('se ha convertido en un centro internacional de comercio y finanzas'),nl.

descripcion(hawaii):-
write('Hawaii, es una de las playas mas hermosas de Estados Unidos'),nl,
write('rodeada de puro oc�ano pacifico y con formaci�n proveniente de islas circundantes.'),nl,
write('Hawaii es el lugar perfecto para disfrutar del sol, la playa, actividades deportivas acu�ticas y paisajes'),nl.

separa :- write_ln(''), write('********************************************************************'),write_ln('').

imprimir(Ciudad):-separa,descripcion(Ciudad),separa.

vacaciones(Ciudad,Mes,W):- seleccion(W,Mes,Ciudad), imprimir(Ciudad).
vacaciones(Ciudad,Mes,X,Y):- seleccion(X,Mes,Ciudad), seleccion(Y,Mes,Ciudad), imprimir(Ciudad).
vacaciones(Ciudad,Mes,X,Y,Z):- seleccion(X,Mes,Ciudad), seleccion(Y,Mes,Ciudad), seleccion(Z,Mes,Ciudad), imprimir(Ciudad).
vacaciones(Ciudad,Mes,X,Y,Z,T):- seleccion(X,Mes,Ciudad), seleccion(Y,Mes,Ciudad), seleccion(Z,Mes,Ciudad), seleccion(T,Mes,Ciudad), imprimir(Ciudad).

ayuda:- nl, write('******************************************************'),nl,
write('Sistema de recomendaci�n para salir de vacaciones'),nl,nl,
write('escriba los datos de la siguiente manera:'),nl,
write('     vacaciones(Ciudad,Mes,Preferencias).'),nl,
write('En el campo preferencias se indica si se quiere un lugar con playa,'),nl,
write('si se quiere una ciudad, si se quiere un lugar con ruinas o un lugar para ir de fiesta'),nl,
write('  Pulse enter detr�s de cada resultado para ver todas las posibilidades.'),nl.
