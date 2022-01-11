sudo apt install curl

initialisation des variables

date
echo -e -n "\n  Bienvenue $utilisateur \n "
echo -e -n "\n  Vous etes sur le point de lancer une application de chiffrement et dechiffrement par la methode de vigenere @SOPKAMChristian. Lisez le readme pour plus de details /n"
echo -e -n "    Vous etes actuellement dans le repertoire $(pwd) \n "
echo -e -n "    Voici la liste des fichiers et dossiers present dans le dossier $(basename $(pwd)) \n "
echo -e -n "\n "
ls --file-type

#Choix du repertoire d'installation

echo -e -n "\n  Dans quel repertoire souhaitez vous deployer le logiciel (CHEMIN ABSOLU) ? \n "

read destination

while [ ! -d $destination ]
do
        echo -e -n "\n Ce n est pas un repertoire \n"
        echo -e -n "\n Entrez un repertoire correct \n"

        read destination
done

echo -e -n "\n Vous allez installer dans le repertoire $destination \n "

cd $destination



sudo apt install python3-pip python3-dev
sudo -H pip3 install --upgrade pip
sudo -H pip3 install virtualenv
mkdir my_project_dir
cd my_project_dir
virtualenv my_project_env
source my_project_env/bin/activate
pip install jupyter

git clone https://github.com/AymarGildas/FaceRecognition-PFE.git 
cd FaceRecognition-PFE
~/.local/bin/jupyter-notebook Learning-vector-quantization.ipynb
















