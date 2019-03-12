# spring-rest-mvc-basics

- Genera una estructura multinivel, con diversos modulos, uno para la logica de negocio y otro para la logica de presentacion:
Logica de negocio:
- Genera un bean con nombre MyBean con las propiedades name, description, date, price. Realiza los getter y setter para cada uno de ellos
- Define una estructura de datos denominada MyBeanWrapper para dichos beans. Puede estar implementado de la manera que desees Generará la estructura CRUD necesaria (Create, Remove, Update, Delete). Dicho contenedor tiene que ser capaz de realizar las siguientes operaciones:
+	add. Inserta un elemento MyBean a la coleccion de datos	
+ remove. Busca por id el elemento deseado y lo elimina de la colección de datos
+ search. Busca por id el elemento deseado y lo devuelve
+ update. Busca por id el elemento deseado y lo modifica por el que desea el usuario
+	getAll. Devuelve toda la colección de datos.
Logica de presentación:	
- Genera una asociacion al modulo de negocio en su pom
- Genera una aplicación spring boot y un controlador
