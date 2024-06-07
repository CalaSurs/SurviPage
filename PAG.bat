<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Página Web</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            color: #333;
        }

        header {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 1.5em 0;
        }

        nav {
            display: flex;
            justify-content: center;
            background-color: #333;
        }

        nav a {
            margin: 0 1em;
            color: white;
            text-decoration: none;
            padding: 1em;
            transition: background-color 0.3s;
            cursor: pointer;
        }

        nav a:hover {
            background-color: #575757;
        }

        main {
            padding: 2em;
            max-width: 1200px;
            margin: auto;
        }

        section {
            background: white;
            margin: 1em 0;
            padding: 1.5em;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            display: none;
        }

        section.active {
            display: block;
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 1em 0;
            position: relative;
            bottom: 0;
            width: 100%;
        }

        form {
            display: flex;
            flex-direction: column;
            max-width: 400px;
            margin: auto;
        }

        label {
            margin: 0.5em 0 0.2em 0;
        }

        input {
            padding: 0.5em;
            margin-bottom: 1em;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 0.7em;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const sections = document.querySelectorAll('section');
            const navLinks = document.querySelectorAll('nav a');

            navLinks.forEach(link => {
                link.addEventListener('click', function() {
                    sections.forEach(section => section.classList.remove('active'));
                    const targetSection = document.querySelector(this.getAttribute('href'));
                    targetSection.classList.add('active');
                });
            });

            const registerForm = document.getElementById('registerForm');
            registerForm.addEventListener('submit', function(event) {
                event.preventDefault();
                sections.forEach(section => section.classList.remove('active'));
                document.getElementById('perfil').classList.add('active');
            });
        });
    </script>
</head>
<body>
    <header>
        <h1>Bienvenidos a Mi Página Web</h1>
    </header>
    <nav>
        <a href="#inicio">Inicio</a>
        <a href="#sobre-mi">Sobre Mí</a>
        <a href="#contacto">Contacto</a>
        <a href="#registro">Registro</a>
    </nav>
    <main>
        <section id="inicio" class="active">
            <h2>Inicio</h2>
            <p>Esta es la sección de inicio de mi página web. Aquí puedes encontrar información sobre los temas principales.</p>
        </section>
        <section id="sobre-mi">
            <h2>Sobre Mí</h2>
            <p>Esta sección contiene información sobre mí. Soy un apasionado de la tecnología y el desarrollo web.</p>
        </section>
        <section id="contacto">
            <h2>Contacto</h2>
            <p>Si deseas ponerte en contacto conmigo, puedes enviarme un correo a ejemplo@correo.com.</p>
        </section>
        <section id="registro">
            <h2>Registro</h2>
            <form id="registerForm">
                <label for="username">Nombre de usuario:</label>
                <input type="text" id="username" name="username" required>
                
                <label for="email">Correo electrónico:</label>
                <input type="email" id="email" name="email" required>
                
                <label for="password">Contraseña:</label>
                <input type="password" id="password" name="password" required>
                
                <button type="submit">Registrar</button>
            </form>
        </section>
        <section id="perfil">
            <h2>Perfil de Usuario</h2>
            <p>Gracias por registrarte. Aquí está tu perfil.</p>
        </section>
    </main>
    <footer>
        <p>&copy; 2024 Mi Página Web. Todos los derechos reservados.</p>
    </footer>
</body>
</html>
