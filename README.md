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

This Bash script backs up a user-specified directory and saves it to a destination 

Function make_backup: This function takes two arguments: the source route and the destination route. Checks if the source directory exists with if [ -d "$source" ];. If it exists, it creates a.tar.gz compressed file in the destination directory with the name based on the current date and time (with date +"%Y%m%d_%H%M%S"). Use sudo tar -czvf to compress the contents of the source directory and save it to the destination. If the source directory does not exist, it informs the user with a message. Request the source and destination route from the user:

read -p is used to prompt for user input, first for the path of the directory to be backed up, and then for where the backup will be stored.


