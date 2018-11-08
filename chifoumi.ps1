


                                    
  function chi {
  
    do {
                       

    While ($true) {

    echo "[ 1 ] : Pierre  "
    echo "[ 2 ] : Feuille "
    echo "[ 3 ] : Ciseaux "
                       

       $userscore = 0
       $ordiscore = 0

    
        [Int] $user = Read-Host "Votre choix"  
        [Int] $ordi = Get-Random -InputObject 1,2,3
        echo  "Choix ordinateur $ordi "

    if (($user -eq "1") -and ($ordi -eq "1")) {
                                                 $res = "ÉGALITE"
                                               }


    if (($user -eq "1") -and ($ordi -eq "2")) {
                                                 $res = "VICTOIRE"
                                                 $userscore ++
                                              }


    if (($user -eq "1") -and ($ordi -eq "3")) {
                                                $res = "PERDU"
                                                $ordiscore ++
                                              }


    if (($user -eq "2") -and ($ordi -eq "3")) {
                                                $res = "VICTOIRE"
                                                $userscore ++
                                               }


    if (($user -eq "2") -and ($ordi -eq "1")) {
                                                $res = "PERDU"
                                                $ordiscore ++
                                               }


    if (($user -eq "2") -and ($ordi -eq "2")) {
                                                $res = "ÉGALITE"
                                               }


     if (($user -eq "3") -and ($ordi -eq "3")) {
                                                 $res = "ÉGALITE"
                                                }


    if (($user -eq "3") -and ($ordi -eq "1")) {
                                                $res = "PERDU"
                                                $ordiscore ++
                                              }


    if (($user -eq "3") -and ($ordi -eq "2")) {
                                                $res = "VICTOIRE"
                                                $userscore ++
                                              }


echo "Résultat: $res "

echo "SCORE: USER : $userscore"

echo "       ORDI : $ordiscore"
                   }
  until $userscore = 3 or $ordiscore = 3 
  }                 
               }   
  
   clear           
   chi                                              