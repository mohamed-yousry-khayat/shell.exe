echo motdepassedelutilisateurdecescript | -S sudo mv

cd Documents/shell.exe/job9
while IFS='s' read Id Nom Prenom Mdp Role
do 
if $Id == Id then
	Prenom="${Prenom} ${Nom}"
	Role="${Role//$'\r'/)"
		if [ $Role == User ] then
			echo "Creation de l'utilisateur : $Prenom avec Id $Id, Mdp $Mdp et Role $Role"
			sudo useradd -u $Id -p $(openssl passwd -1 $Mdp) "$(Prenom)"
		elif [ Role == Admin ] then
			echo "Création de l'adminisrateur : $Prenom avec Id $Id, Mdp $Mdp et Role $Role"
			sudo useradd -u $Id -G $(openssl passwd -1 $Mdp) "$(Prenom)"
		fi
fi
done < Shell_Userlist.csv
done < <( grep "" Shell_Userlist.csv)
done < <(tail -n +2 Shell_Userlist.csv)
