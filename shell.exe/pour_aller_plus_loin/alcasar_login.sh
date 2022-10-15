challenges=$(curl -L --request GET https://alcasar.laplateforme.io/intercetp.ph 2>&1 | grep -oP 'name="challenge" value="\K(?:(?!").)*'
userurl =$(curl -L --request GET https://alcasar.laplateforme.io/intercetp.ph 2>&1 | grep -oP 'name="userurl" value="\K(?:(?!").)*'
username='mohamed-yousry.khayat@lapletforme.io'
password='motdepasse'

curl -L --request POST https://alcasar.laplateforme.io/intercetp.ph --header 'Type: multipart/form-data' --form challenge=$challenge --form userurl=$userurl --form username=$usrname --form password=$password --form button=Authentication --location https://alcasar.laplateforme.io/intercetp.php
