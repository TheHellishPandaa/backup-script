#!/bin/bash
clear


echo "        ██████╗  █████╗  ██████╗██╗  ██╗██╗   ██╗██████╗     ███████╗ ██████╗██████╗ ██╗██████╗ ████████╗ "
echo "        ██╔══██╗██╔══██╗██╔════╝██║ ██╔╝██║   ██║██╔══██╗    ██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══╝ "
echo "        ██████╔╝███████║██║     █████╔╝ ██║   ██║██████╔╝    ███████╗██║     ██████╔╝██║██████╔╝   ██║   "
echo "        ██╔══██╗██╔══██║██║     ██╔═██╗ ██║   ██║██╔═══╝     ╚════██║██║     ██╔══██╗██║██╔═══╝    ██║   "
echo "        ██████╔╝██║  ██║╚██████╗██║  ██╗╚██████╔╝██║         ███████║╚██████╗██║  ██║██║██║        ██║   "
echo "        ╚═════╝ ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝         ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝   "
echo "                                                                                                " 
#make backup
make_backup() {
    local source=$1
    local destination=$2
    if [ -d "$source" ]; then
        timestamp=$(date +"%Y%m%d_%H%M%S")
        backup_file="$destination/backup_$timestamp.tar.gz"
        sudo tar -czvf "$backup_file" -C "$source" .
        echo "Backup created at: $backup_file"
    else
        echo "Source directory does not exist."
    fi
}
# Prompt for source directory
read -p "Enter the path of the directory you want to backup: " source_path

# Prompt for destination path
read -p "Enter the path where you want to save the backup: " destination_path

# Create destination directory if it doesn't exist
if [ ! -d "$destination_path" ]; then
    sudo mkdir -p "$destination_path"
    echo "Created destination directory: $destination_path"
else
    echo "Destination directory already exists: $destination_path"
fi

# make the backup
make_backup "$source_path" "$destination_path"


