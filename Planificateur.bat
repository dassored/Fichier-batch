
@echo oof
goto Menu

:Menu
echo ------------------------------------------------
echo ! gestion de l'arret du sytheme windose
echo ------------------------------------------------
echo 1 -Planifier un arret du systeme.
echo 2 -Planifier un redemarrage du systeme.
echo 3 -annuler l'arret planifier.
echo -----------------------------------------------
Set /p Action = votre choix :
 
IF %action% == 1 GOTO PlanifierArret
IF %Action% == 2 GOTO PlanifierRedemarrage
IF %Action% == 3 GOTO AnnulerPlanifcation
IF %Action% == 3 GOTO SaisieIncorrecte

:AnnulerPlanification
shudown -a
EchoPlanification annulee
Goto FinProgramme


:PlanifierRedemarrage
echo info : 1 heur = 3600 seconde
SET /p seconde= Secondes avant le redemarrage du systeme :
IF '%Secondes%' == '' GOTO PlanifierRedemarrage
shutdown -r -t %Secondes%

GOTO finprogramme
PlanifierArret
Echo Info : 1 heure = 3600 secondes
SET /p Secondes= Secondes avant l'arret du systeme :
IF '%Secondes%' == '' GOTO PlanifierArret
shutdown -s -f -t %Secondes%
GOTO FinProgramme


:SaisieIncorrecte
CLS
Echo ! ! ! ! ! ! Valeur saisie incorrecte ! ! ! ! ! !
GOTO Menu

:FinProgramme



