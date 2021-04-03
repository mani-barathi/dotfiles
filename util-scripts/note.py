# Author      : Manibarathi
# GitHub      : https://github.com/mani-barathi/dotfiles
# Description : Script will operates as a simple note taking system, which can be used directly from command line
#               This script is executed from note function insider profile.ps1

import sys,os

# Receiving the Home Directory from powershell script as a Program argument
HOME_DIR = sys.argv[1]

# Constants
NOTES_DIR = fr"{HOME_DIR}\Desktop\notes"
NOTES_GENERAL_DIR = fr"{HOME_DIR}\Desktop\Notes\general"
EDITOR = 'gvim'

def general_folder(file):
    os.chdir(NOTES_GENERAL_DIR)
    # if the file is not present in the folder, ask the user whether to create it or not
    if file not in os.listdir():
        choice = input(f'{file} does not exists.\nDo you want to create (y/n) :')
        if choice.lower() not in ['yes','y']:   # if no simply return
            return 
        f = open(file,'w')
        f.close()
        print(f'{file} is created in General folder !')
        return os.system(f'{EDITOR} {file}')

    # if the file is present in the folder, open the file
    print(f'{file} already exists in General folder !\nOpening {file}...')
    os.system(f'{EDITOR} {file}')

def main():
    if len(sys.argv) == 3:    # command: note demo.txt
        file = sys.argv[2]
        file = file if file.endswith('.txt') else f'{file}.txt' 
        general_folder(file)
    elif len(sys.argv) == 2:
        os.system(f'{EDITOR}')

if __name__=='__main__':
    os.chdir(NOTES_DIR)
    main()
