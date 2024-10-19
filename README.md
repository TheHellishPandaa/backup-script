# backup-script
This is a script that automatize the backups of the system.  

<h2><strong>Installation & Usage</strong></h2>

Clone the repository:

1. **Clone the repository**:

   ```bash
   git clone https://github.com/TheHellishPandaa/backup-script.git
   ```

2. **Navigate to the script's directory**:

   ```bash
   cd backup-script
   ```

3. **Make the script executable**:

   ```bash
   chmod +x backup.sh
   ```

4. **Run the script**:

   ```bash
   ./backup.sh
   ```
<hr><hr>
Automatize your Backups ;)

You can use, download or modify this script ;)


Este script en Bash realiza una copia de seguridad de un directorio especificado por el usuario y la guarda en un destino también especificado. A continuación te explico los pasos clave del código:

    Impresión de un banner gráfico:
        Las primeras líneas con echo imprimen un gráfico visual en forma de texto usando caracteres especiales para darle un aspecto estético.

    Función make_backup:
        Esta función toma dos argumentos: la ruta de origen (source) y la ruta de destino (destination).
        Verifica si el directorio de origen existe con if [ -d "$source" ];.
        Si existe, crea un archivo comprimido .tar.gz en el directorio de destino con el nombre basado en la fecha y hora actual (con date +"%Y%m%d_%H%M%S").
        Usa sudo tar -czvf para comprimir el contenido del directorio de origen y guardarlo en el destino.
        Si el directorio de origen no existe, informa al usuario con un mensaje.

    Solicita la ruta de origen y destino al usuario:
        read -p se usa para pedir la entrada del usuario, primero para la ruta del directorio que se quiere respaldar y luego para el lugar donde se almacenará la copia de seguridad.

    Verificación del directorio de destino:
        Si el directorio de destino no existe, se crea con sudo mkdir -p, y si ya existe, el script simplemente avisa que el directorio ya está disponible.

    Llamada a la función make_backup:
        Después de recibir las rutas de origen y destino, se llama a la función make_backup para ejecutar la creación de la copia de seguridad.
