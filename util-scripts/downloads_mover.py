# Author      : Manibarathi
# Link  	  : https://github.com/mani-barathi/dotfiles
# Description : Script will move all the files from the downloads directory to specified folder based on the extension
#               This script is executed from downloads_mover function inside profile.ps1

import os,shutil,sys
from concurrent.futures import ThreadPoolExecutor

# Receiving the Home Directory from powershell script as a Program argument
HOME_DIR = sys.argv[1]
# change the directories (if required)
DOWNLOADS_DIR = fr"{HOME_DIR}\Downloads"
IMAGE_DIR        = fr"{HOME_DIR}\Downloads\images"
MUSIC_DIR        = fr"{HOME_DIR}\Music\Latest" 
VIDEOS_DIR       = fr"{HOME_DIR}\Downloads\Video_files" 
SOFTWARES_DIR    = fr"{HOME_DIR}\Downloads\setup or softwares"
ZIP_RAR_DIR      = fr"{HOME_DIR}\Downloads\Zip_rar_files"
RANDOM_DOCS_DIR  = fr"{HOME_DIR}\Downloads\random_docs-pdf"

def move_file(file):
    original_file = file
    file = file.lower()
    try:
        if os.path.isdir(file) or file.endswith('.crdownload'):
            return
        elif file.endswith(".jpg") or file.endswith(".png"):
            shutil.move(os.path.abspath(original_file),IMAGE_DIR)
            print(f"{original_file} ---> to {IMAGE_DIR}")

        elif(file.endswith(".mp3")):
            shutil.move(os.path.abspath(original_file),MUSIC_DIR)
            print(f"{original_file} ---> to {MUSIC_DIR}")
            
        elif(file.endswith(".mp4") or file.endswith(".mkv") or file.endswith(".m4v") or  file.endswith(".avi")):
            shutil.move(os.path.abspath(original_file),VIDEOS_DIR)
            print(f"{original_file} ---> to {VIDEOS_DIR} ")

        elif(file.endswith(".exe") or file.endswith(".msi") or file.endswith(".whl") ):
            shutil.move(os.path.abspath(original_file),SOFTWARES_DIR)
            print(f"{original_file} ---> to {SOFTWARES_DIR}")

        elif(file.endswith(".pdf") or file.endswith(".doc") or file.endswith(".docx") or file.endswith(".pptx") or file.endswith(".ppt") ):
            shutil.move(os.path.abspath(original_file),RANDOM_DOCS_DIR)
            print(f"{original_file} ---> to {RANDOM_DOCS_DIR}")    
                        
        elif(file.endswith(".zip") or file.endswith(".rafr") or file.endswith(".gz")):
            shutil.move(os.path.abspath(original_file),ZIP_RAR_DIR)
            print(f"{original_file} ---> to {ZIP_RAR_DIR}")

    except Exception as e:
        print(e)

if __name__=='__main__':
    print(f'Home Directory: {HOME_DIR}')
    os.chdir(DOWNLOADS_DIR)
    files=os.listdir()
    with ThreadPoolExecutor() as executer:
        executer.map(move_file,files)

    input("Completed.... Press Any key to Close")