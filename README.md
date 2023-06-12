# JAVAAVANZADO5
Taller 8 y 9.

LoginForwardingServlet: Este servlet se encarga de redirigir las solicitudes a la página de inicio de sesión (inicio.jsp). Cuando recibe una solicitud GET en la ruta /login, utiliza RequestDispatcher para reenviar la solicitud a /inicio.jsp.

CategoryForwardingServlet: Este servlet redirige las solicitudes a la página de categoría (category.jsp). Cuando recibe una solicitud GET en la ruta /category, utiliza RequestDispatcher para reenviar la solicitud a /category.jsp.

ProductForwardingServlet: Este servlet redirige las solicitudes a la página de producto (product.jsp). Cuando recibe una solicitud GET en la ruta /product, utiliza RequestDispatcher para reenviar la solicitud a /product.jsp.

RedirectionSenaServlet: Este servlet realiza una redirección externa a una URL específica. Cuando recibe una solicitud GET en la ruta /sena, utiliza sendRedirect para enviar una respuesta de redirección al cliente y redirigirlo a la página web del SENA (Servicio Nacional de Aprendizaje) en https://www.sena.edu.co.

RegisterForwardingServlet: Este servlet redirige las solicitudes a la página de registro (index.jsp). Cuando recibe una solicitud GET en la ruta /register, utiliza RequestDispatcher para reenviar la solicitud a /index.jsp.
En resumen, estos servlets actúan como controladores que redirigen las solicitudes a las páginas correspondientes, lo que ayuda a mantener la lógica de navegación de tu aplicación y facilita la gestión de rutas y páginas.

luego Se crearon dos archivos JSP adicionales: header.jsp y footer.jsp. Estos archivos contienen el encabezado y pie de página respectivamente, y serán incluidos en las páginas JSP que los necesiten. Esto ayuda a mantener un código más organizado y evita la repetición de código en múltiples archivos.

En el archivo registerProduct.jsp, se reemplazó el contenido anterior por la inclusión de header.jsp y footer.jsp. Esto significa que el contenido principal del formulario de registro de productos se encuentra entre las etiquetas <main> y </main>. Al incluir header.jsp y footer.jsp, obtienes los estilos, enlaces a scripts y la estructura básica del encabezado y pie de página en tu página registerProduct.jsp.

Al separar el código en archivos JSP reutilizables, puedes mantener un diseño consistente en todas tus páginas y facilitar la actualización y mantenimiento del código. Además, si necesitas realizar cambios en el encabezado o pie de página, solo tienes que modificar los archivos header.jsp y footer.jsp una vez, y los cambios se reflejarán automáticamente en todas las páginas que los incluyen.
