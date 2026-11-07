# TP1 - 23 Octobre 2026
# TP préparé par Sakina-Dorothee Ayata
# Séance assurée par Emilienne Grzegorczyk
# Master Sciences de la mer
# Sorbonne Universite
# M1 SdM - Modélisation

## TO REMEMBER HERE: Option + Shift + K
m%*%n # matrix multiplication
eigen(m) # eigen values ("valeurs propres")

#
# Initiation au langage R et programmation
# TP 1  - Première partie : rappels sur R et Rstudio
# 
# Ce script est pour parties inspiré du site https://r4ds.hadley.nz/
# 2nd edition of “R for Data Science” et de la page web
# https://lrouviere.github.io/TUTO_R/objetsR.html#vecteur
########################################################################


# Ce document est un fichier script (c'est-à-dire un fichier texte
# qu peut être lu par un logiciel, ici R, on utilise donc
# l'extension de fichier .R à la fin du nom du fichier)
# Ce fichier script contient des suites d'exercices dans le
# langage R.
# Pour exécuter une ligne du code, vous pouvez placer votre
# curseur sur cette ligne ici dans le script, puis taper
# simulatanément sur les touches Command+ENTER du clavier
# Attention, si vous utilisez le bouton 'Run' en haut à droite de
# RStudio, c'est tout le script qui va s'executer.


# Pour la suite du TP, on commencera par créer un répertoire dans lequel on
# mettra tous les fichiers de la séance. Par défaut, le répertoire de travail 
# se situera dans le répertoire de ce script.
# On peut le vérifier avec la commande

getwd()

# La commande setwd permet de changer le répertoire de travail si besoin. 
# On peut aussi le faire en utilisant le menu Session -> Set Working directory 
# -> Choose directory….


### Partie 0 : découvrir R et RStudio
#####################################################

## 0.1. Avant de commencer, qu'est-ce que R?

# R est un langage (et un environnement) de programmation dédié à la
# manipulation, l’analyse statistique et la visualisation de données.

# Il y a plusieurs raisons pour expliquer pourquoi R est de plus en plus
# utilisé dans les domaines de la science des données massives, y compris
# en sciences de la mer :

# - C'est un logiciel gratuit et open source.
# - Il est utilisable par plusieurs environnement de travail (Windows, Mac, Linux).
# - Il procède d'excellentes capacités graphiques (idéal pour la
# préparation de rapports ou d’articles scientifiques).
# - Il est facile de développer ses propres fonctions (pour automatiser ses
# analyses par exemple).
# - Il existe une très grande communauté d'utilisateurs et de développeurs
# (et donc beaucoup de librairies, d'aide en ligne via des forums, etc.).

## 0.2. Quest-ce que RStudio ?
#
# RStudio est ce que l'on appelle un "IDE" ou "Integrated development environment"
# (environnement de développement intégré).
#
#
# La fenêtre de RStudio s'organise par défaut en 4 parties :
#
# 1) La fenêtre des scripts :
#
# En haut à gauche (ici) se trouvent vos scripts : ce sont des fichiers texte
# qui se terminent par l'extension .R et que le logiciel R peut exécuter (ligne
# par ligne ou tout d'un coup). Ici on voit que ce script s'appelle 
# TD1_script_a_suivre.R. On peut ouvrir plusieurs scripts dans plusieurs onglets
# si besoin.
#
# 2) La fenêtre de la console de R
# 
# En bas à gauche, se trouve la "Console" de R : c'est ici que R s'exécute.
# Pour pouvez par exemple écrire dans cette fenêtre de console puis taper ENTRER
# R va alors interpréter ce que vous avez écrit et l'éxécuter. Mais s'il ne
# comprend pas la consigne (appelée "ligne de commande"), il vous le dira.
# Faites le test : tapeZ 1 puis ENTRER, tapez 1+2 puis ENTRER, taper a <- 2
# puis ENTRER, puis tapez a et ENTRER, tapez b et ENTRER. Qu'observez-vous ?
#
# Lorsque la ligne de la console commence par le signe ">" (appelé "prompt"),
# alors vous pouvez écrire quelque chose puis taper ENTRER pour que R exécute
# votre ligne de commande.
# Si R ne comprend pas votre ligne de commande, il vous le dira à l'aide d'un
# message d'erreur écrit en rouge.
# Quels sont les messages d'erreur que vous avez vus ?
#
# Que se passe-t-il si vous taper # 3 puis ENTRER dans la console ?
# A vous avis, pourquoi ?
#
# Le signe # sert à faire des commentaires dans vos scripts.
# R ne prendra pas en compte tout le texte qui suit un signe #
#
# 3) La fenêtre de votre environnement
# 
# En haut à droit, dans la fenêtre de votre environnement, vous trouverez
# l'ensemble des variables que vous avez déjà définies/déclarées et que R
# a gardées en mémoire.
# Qu'y voyez-vous ?
#
# Dans cette fenêtre en haut à droite il existe aussi un Onglet appelé "History"
# qui récapitule tout l'historique de ce que vous avez entrez dans la Console R.
#
# 4) La fenêtre en bas à droite
#
# La fenêtre en bas à droite comprend plusieurs onglets : Files, Plots,
# Packages Help, Viewer...
# C'est ici que s'affichera l'aide, mais aussi les figures que vous générerez.
# Il est aussi utile de jeter un coup d'oeil à l'onglet "File" pour voir la liste
# des fichiers qui se trouve dans votre répertoire actuel.
#
#
#
#
### Partie 1 : Introduction générale / rappels
#####################################################
#
## 1.1. Les basiques pour coder
#
# Il est possible d'utiliser R comme une calculatrice. Regarder ce que donnent
# ces lignes de code par exemple :

1 / 200 * 30

(59 + 73 + 2) / 4

sin(pi / 2)

# Que comprenez-vous ?

# Nous avons vu que la ligne suivante permet de créer une variable
# qui s'appelle a et qui contient la valeur 2, en utilisant l'opérateur "<-" :
a <- 2

# Qu'obtenez-vous si vous exécuter la ligne suivante ?
x <- 3 * 4
# (Pour rappel, vous pouvez la copier-coller dans la console ci-dessous,
# ou bien y positionner vore curseur et taper COMMAND+ENTRER

# Notez que la valeur de x n’est pas affichée dans la console, elle est
# simplement stockée en mémoire (cf. dans l'onglet Environment en haut à droite).
# Si vous souhaitez afficher la valeur, tapez x dans la console :
x

# Vous pouvez combiner plusieurs éléments dans un vecteur avec la fonction c() :
premiers <- c(2, 3, 5, 7, 11, 13)
premiers

# Un vecteur est une suite de chiffres rangés dans une ligne (ou une colonne).
#
# L'arithmétique de base sur les vecteurs est appliquée à chaque élément du vecteur :
# Qu'obtenez-vous en tapant ces lignes de code ?
premiers * 2
premiers - 1

# Dans R, quand vous souhaitez créer un object (une variable) et lui donner une
# valeur, vous suivrez toujours la nomenclature suivante :
nom_d_object <- valeur

# Notez que ici, si vous tapez cette ligne de commande telle qu'elle, R vous 
# renvoie un message d'erreur. Le quel ? Que signifie-t-il ?
# Et si maintenant vous tapez ceci, qu'obtenez vous ?
mon_object <- 3*45

# On appelle ceci une assignation (on défini une variable et on lui assigne une
# valeur). Noter que la valeur de la variable peut changer. Une variable est
# un peu comme un sac, sur lequel est écrit un nom, et dans le quel il y a une
# valeur. Par exemple on peut changer la valeur de la variable mon_object:
mon_object <- 2*45
# Ou même :
mon_object <- mon_object -1

# Vous ferrez beaucoup d'assignation, et les charactères "<-" peuvent être
# difficile à taper. Vous pouvez gagner du temps avec le raccourci clavier de
# RStudio : Alt + - (le signe moins). Notez que RStudio entoure automatiquement
# <- d'espaces, ce qui est une bonne pratique de formatage du code.
# Le code peut être pénible à lire dans une bonne journée, alors 
# donnezunepauseàvosyeux et utilisez les espaces !

# 1.2 Les commentaires

# Comme déjà vu, R ignorera tout texte après le signe # pour cette ligne.
# Cela vous permet d'écrire des commentaires, du texte ignoré par R mais lu
# par d'autres humains. Dans ce script, j'ai inclus des commentaires. Les
# commentaires sont aussi utiles pour expliquer ce qui se passe avec le code.

# Par exemple, les commentaires peuvent être utiles pour décrire brièvement
# ce que fait le code suivant.

# créer un vecteur de nombres premiers
premiers <- c(2, 3, 5, 7, 11, 13)

# multiplier les nombres premier par 2
premiers * 2
#> [1]  4  6 10 14 22 26
#
# Avec de courts morceaux de code comme celui-ci, il n'est peut-être pas
# nécessaire de laisser un commentaire pour chaque ligne de code. Mais à mesure
# que le code que vous écrivez devient plus complexe, les commentaires peuvent
# vous faire gagner (ainsi qu’à vos collaborateurs) beaucoup de temps pour
# comprendre ce qui a été fait dans le code.

# Utilisez des commentaires pour expliquer le pourquoi de votre code, pas le
# comment ou le quoi. Le quoi et le comment de votre code sont toujours 
# possibles à comprendre, même si cela peut s'avérer fastidieux, en le lisant
# attentivement. Si vous décrivez chaque étape dans les commentaires, puis 
# modifiez le code, vous devrez également penser à mettre à jour les 
# commentaires, sinon cela sera déroutant lorsque vous reviendrez à votre code
# à l'avenir.

# Dans votre code de modélisation (ou même de statistiques), utilisez des 
# commentaires pour expliquer votre plan d'attaque global et enregistrez les 
# informations importantes au fur et à mesure que vous les rencontrez. Il 
# n’existe aucun moyen de récupérer ces connaissances à partir du code lui-même.

# 1.3 Les noms des objets que vous créez

# Les noms d'objet doivent commencer par une lettre et ne peuvent contenir
# que des lettres, des chiffres, _ et .. 
# Si vous souhaitez que les noms de vos objets soient descriptifs, vous devrez
# donc adopter une convention pour inclure plusieurs mots dans le nom de
# votre objet. Nous recommandons Snake_case, où vous séparez les mots 
# minuscules par le tiret du bas _
# Par exemple :
j_utilise_snake_case <- 1 
dAutresPersonnesUtilisentCamelCase <- 2
d.autres.utilisent.des.points <- 3
Et_certainesPersonnes.RENONCENT_auxConventions <- 4 

# Vous pouvez inspecter un objet en tapant son nom :
x

# Faites une autre assignation :
ceci_est_un_nom_vraiment_long <-2.5

# Pour inspecter cet objet, essayez la fonction de complétion automatique
# de RStudio. Our cela : tapez « ceci », appuyez sur TAB (la touche tabulation),
# et ajoutez des caractères jusqu'à ce que vous ayez un préfixe unique, puis
# appuyez sur Entrée.

# Supposons que vous ayez commis une erreur et que la valeur de la variable
# ceci_est_un_nom_vraiment_long devrait être de 3,5 et non de 2,5. Vous pouvez
# utiliser un autre raccourci clavier pour vous aider à résoudre ce problème. 
# Par exemple, dans la console vous pouvez appuyer sur ↑ (flèche vers le haut)
# pour afficher la dernière commande que vous avez saisie et la modifier. 
# Ou tapez « ceci », puis appuyez sur Cmd/Ctrl + ↑ pour répertorier toutes 
# les commandes que vous avez tapées qui commencent par ces lettres. 
# Utilisez les touches fléchées pour naviguer, puis appuyez sur Entrée pour 
# retaper la commande. Remplacez 2,5 par 3,5 et réexécutez en tapant Entrée.

# Déclarer une nouvelle variable :
r_c_est_super <- 2^3

# Et essayons de l'inspecter :
r_c_est_supe
#> Error: object 'r_c_est_supe' not found
R_c_est_super
#> Error: object 'R_c_est_super' not found

# Ceci illustre le contrat implicite entre vous et R : R fera les calculs
# fastidieux à votre place, mais en échange, vous devez être parfaitement 
# précis dans vos instructions.
# Sinon, vous obtiendrez probablement une erreur indiquant que l’objet que 
# vous recherchez n’a pas été trouvé. Les fautes de frappe comptent ; R ne 
# peut pas lire dans vos pensées et dire : « oh, il/elle voulait probablement 
# dire r_c_est_super lorsqu'il/elle a tapé r_c_est_supe ». Et si c'est une
# majustcule ou une minuscule, ça compte aussi. De même, R ne peut pas lire 
# dans vos pensées et dire : « oh, il/elle voulait probablement dire
# r_c_est_super lorsqu'il/elle a tapé R_c_est_super ».

## 1.4 Appeler des fonctions
#
# R possède par défaut tout un tas de fonctions prédéfiniées (appellées
# "built-in functions" en anglais), qui sont appelées ainsi :
  
# nom_de_la_fonction(argument1 = valeur1, argument2 = valeur2, ...)

# Essayons par exemple d'utiliser la fonction seq(), qui crée des séquences
# régulières de nombres, et pendant que nous y sommes, apprenons d'autres 
# fonctionnalités plus utiles de RStudio.
# Tapez se et appuyez sur TAB. 

# Une fenêtre contextuelle vous montre les réalisations possibles. 
# Spécifiez seq() en tapant q pour lever l'ambiguïté ou en utilisant les flèches
# haut et bas (↑/↓) pour sélectionner la fonction qui vous intéresse.
# Remarquez l'info-bulle flottante qui apparaît, vous rappelant les arguments
# et l'objectif de la fonction. Si vous souhaitez plus d'aide, appuyez sur F1
# pour obtenir tous les détails dans l'onglet d'aide dans le volet inférieur 
# droit. Vous pouvez aussi obtenir l'aide de cette fonction en tapant :
?seq

# Que voyez-vous en bas à droite ?
# Que fait cette fonction et comment s'utilise t'elle ?
# Vous verrez tout en bas de l'aide quelques exemples d'utilisation.

# Lorsque vous avez sélectionné la fonction souhaitée, appuyez à nouveau sur 
# TAB. RStudio ajoutera pour vous des parenthèses ouvrantes (() et fermantes) 
# correspondantes. Tapez le nom du premier argument, from, et définissez-le égal
# à 1. Ensuite, tapez le nom du deuxième argument, to, et définissez-le égal à
# 10. Enfin, appuyez sur Entrée.

seq(from = 1, to = 10)

#>  [1]  1  2  3  4  5  6  7  8  9 10

# Nous omettons souvent les noms des premiers arguments dans les appels de
# fonction, nous pouvons donc réécrire ceci comme suit :

seq(1, 10)
#>  [1]  1  2  3  4  5  6  7  8  9 10

# Tapez le code suivant et notez que RStudio fournit une assistance similaire
# avec les guillemets appariés qui sont automatiquement ajoutés :
x <- "hello world"

# Les guillemets et les parenthèses doivent toujours être associés par deux. 
# RStudio fait de son mieux pour vous aider, mais il est toujours possible de 
# se tromper et de se retrouver avec une inadéquation. Si cela se produit, 
# R vous montrera le caractère de continuation « + » (plus) à la place du 
# prompt (>): R attend que vous finissiez votre phrase en quelque sorte !
x <- "hello

# Vous verrez dans la console qu'en allant à la ligne suivante R commence la 
# ligne avec le signe + qui vous indique que R attend plus d’entrées ; il 
# pense que vous n'ayez pas encore terminé. Habituellement, cela signifie que 
# vous avez oublié un "
# ou un ). # Ajoutez la paire manquante ou appuyez sur ÉCHAP pour abandonner 
# l'expression et réessayer.

# Notez que l'onglet Environnement de RStudio dans le volet supérieur droit 
# affiche tousles objets que vous avez créés :
  

# 1.5 Exercices : à vous de jouer !

# Pourquoi le code suivant ne fonctionne-il pas ?
my_variable <- 10
my_varıable
# Error: object 'my_varıable' not found

# Regardez attentivement! (Cela peut sembler un exercice inutile ("pointless"), 
# mais entraîner votre cerveau à remarquer la moindre différence sera payant 
# lors de la programmation.)

# Appuyez sur Option + Shift + K / Alt + Shift + K. 
# Que se passe-t-il ? Comment pouvez-vous arriver au même endroit à partis des 
# menus de RStudio ?


### Partie 2 : manipuler des tableaux (vecteurs, matrices, dataframe)
#######################################################################

# En mathématiques, une matrice est un tableau avec des lignes et des colonnes.
# Une matrice avec une seule ligne, ou une seule colonne s'appelle un vecteur.

# Les vecteurs
##############

# Dans R, on peut définir des vecteurs de plusieurs façons :
# 1) Avec la fonction c()
?c
x <- c(1.2,5,9,11)
x

# 2) Avec l'opérateur séquence ":"
1:5

# 3) Avec la fonction séquence que nous avons déjà vue
?seq
seq(1,10,by=2)
seq(0,1,length=10)

# 4) Avec la fonction rep
?rep
rep(1,4)
rep(c(1,3),each=3)

# On peut aussi créer des vecteurs caractère ou logique

x <- c("A","B","C")
x <- rep("A",5)

# Ici on utilise des booléens (opérateurs logiques "vrai" ou "faux") :
c(T,F,T)

# Pour sélectionner une partie d’un vecteur, on utilise des crochets [ ]
# Que font chacune des lignes suivantes ?
x <- c(-4,-3,1,3,5,8,0)
x[2]

x[c(2,5)]

x>0

x[x>0]

# On peut aussi réaliser des opérations sur les vecteurs, comme par exemple
# les additionner ou multiplier des vecteurs :
  
x <- seq(-10,10,by=2)
y <- 1:length(x)
x+y

x*y

z <- x>0
x*z

# Les matrices
################

# Nous allons maintenant manipuler des tableaux appelés matrices.

# La fonction matrix permet de définir des matrices.

m <- matrix(1:4,ncol=2)
m

m <- matrix(1:4,nrow=2)
m

m <- matrix(1:4,nrow=2,byrow=TRUE)
?dim
dim(m)

# La position d’un élément dans une matrice est indiquée par ses numéros de 
# ligne et de colonne. Ainsi, pour sélectionner le terme de la 2ème ligne et 
# la 1ère colonne, on utilisera des crochets :

m[2,1]

# On peut aussi extraire des lignes et des colonnes :

m[1,] #première ligne
m[,2] #deuxième colonne

# Il n’est pas difficile de faire les calculs usuels sur les matrices, comme
# par exemple la transposée d'une matrice (qui inverse les lignes et les 
# colonnes) : 

n <- matrix(5:8,nrow=2)
m+n

m*n #attention : produit de Hadamart (chaque élément de la ligne i et de la 
# colonne j est multiplié par l'élément de la ligne i et de la colonne j de la
# seconde matrice)

# En maths, les matrices se multiplient grâce au produit matriciel :
m%*%n #Produit matriciel

# En algèbre matriciel, on peut aussi décomposer une matrice en valeur propres
# et en vecteurs propres (si vous n'avez jamais entendu parlé de matrices et
# d'algèbre linéaire, ce n'est pas grave )
?eigen
eigen(m) #Décomposition en valeurs propres


### Les dataframes
##################

# Les dataframes sont des listes particulières dont les composantes ont la même
# longueur, mais potentiellement des modes différents. C’est l’objet 
# généralement utilisé pour les tableaux de données (qui contiennent souvent 
# des variables quantitatives et qualitatives). 
# Par exemple :

name <- c("Paul","Mary","Steven","Charlotte","Peter")
sex <- factor(c("M","F","M","F","M"))
size <- c(180,165,168,170,175)
data <- data.frame(name,sex,size)

data

# On observe que name est un vecteur de caractères, sex un facteur et size un
# vecteur numérique.

# L’extraction de certains éléments est similaire que pour des matrices.
# Qu'obtenez-vous en exécutant les commandes suivantes ?

data[2,3]
data[,2]
data$sex

# Exercice 2.1 (Manipulation de vecteurs)
###########################################

# Calculer la moyenne, la somme, la médiane et la variance du vecteur (1,3,8,9,11).
v <- c(1,3,8,9,11)
mean(v)
median(v)
var(v)

# Créer les vecteurs suivants en utilisant la fonction rep.
v <- 1:5
# vec1 = 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 
rep(v, times = 3)
# vec2 = 1 1 1 2 2 2 3 3 3 4 4 4 5 5 5
rep(v, each = 3)
# vec3 = 1 1 2 2 2 3 3 3 3 4 4 4 4 4
rep(v[-5], times = v[-5]+1)

# La variable letters est un vecteur qui contient les 26 lettres de l’alphabet.
letters
# Trouver le numéro de la lettre q
# (sans compter “avec les doigts” !). On pourra utiliser la fonction which.
?which
which(letters == "q")

### Partie 3 : Quelques fonctions importantes pour manipuler des données sous R
################################################################################

# Voici quelques fonctions importantes, prédéfinies dans R, qui vous seront
# forcément utile (un jour) :

# La fonction "summary" qui produit un résumé d’un objet :
? summary
summary(data)

# Les fonctions permettant de calculer la moyenne, la somme, etc :
# mean, sum, median, var, min, max… (facile à comprendre)
? mean
mean(data$size)
sum(data$size)
median(data$size)
var(data$size)
min(data$size)
max(data$size)


# Des fonction qui permettent de classer ou d'ordonner :
?sort

# Que fait cette fonction ?

x <- c(1,8,5,4)
sort(x)


# Est-ce ce à quoi vous vous attendiez ?

# Une fonction très utile qui permet d'appliquer une fonction sur les lignes ou
# les colonnes d'une matrice ou datafame :

?apply
# apply applique une fonction f aux lignes ou colonnes d’une matrice ou dataframe

V1 <- 1:10
V2 <- seq(-20,25,length=10)
df <- data.frame(V1,V2)

# Qu'obtenez-vous avec les deux lignes de code suivantes ?
apply(df,1,mean)
apply(df,2,sum)


# Exercices complémentaires
##############################

# Exercice 3.1 : Manipulation de matrices
##########################################

# Créer la matrice suivante que l’on appellera mat 
# (on pourra utiliser les fonctions rownames et colnames) :
#   column 1 	column 2 	column 3 	column 4
# row-1 	1 	5 	5 	0
# row-2 	0 	5 	6 	1
# row-3 	3 	0 	3 	3
# row-4 	4 	4 	4 	2

mat <- matrix(c(1, 0, 3, 4, 5, 5, 0, 4, 5, 6, 3, 4, 0, 1, 3, 2), ncol = 4)
colnames(mat) <- paste("column", 1:4)
rownames(mat) <- paste0("row-", 1:4)

# Créer un vecteur qui contient la première ligne de mat.
mat[1,]

# Créer une matrice qui contient les 2 premières lignes de mat.
mat[1:2,]

# Créer une matrice qui contient les 2 dernières colonnes de mat.
mat[,3:4]

# Exercice 3.2 : Manipulations simples sur un jeu de données
##########################################

# On considère le jeu de données iris disponible dans R :
?data  
data(iris)
?head
# Que fait la fonction head ?
head(iris)

# Calculer les moyennes et variances des variables Sepal.Width et Petal.Length.
apply(iris[,2:3], 2, mean)
apply(iris[,2:3], 2, var)

# Créer un sous jeu de données qui contient uniquement les iris de l’espèce
# versicolor. On appellera ce tableau iris2.
iris2 <- iris[iris$Species == "versicolor",]

# Ordonner les individus dans iris2 par valeurs décroissantes de la variable 
# Sepal.Length (on pourra utiliser la fonction order).
iris2[order(iris2$Sepal.Length, decreasing=TRUE), ]

# Calculer les valeurs moyennes de Sepal.Length pour chaque espèce.
library(dplyr)
iris |>
  group_by(Species) |>
  summarise(moyenne = mean(Sepal.Length))

# Ajouter une variable (qu’on appellera sum.Petal) dans le dataframe iris qui 
# contiendra la somme de Petal.Length et Petal.Width.
iris |>
  mutate(sum.Petal = Petal.Length + Petal.Width)


### Partie 4 : faire des graphiques de base avec R
####################################################

# Nous allons maintenant visualiser des données, ici deux vecteurs x et y :
x <- seq(1:10)
?exp
y <- exp(x)

# Pour celà, nous allons utiliser la fonction de base plot :
?plot
plot(x,y) # Par défaut, on a des points

# On peut aussi choisir de tracer une ligne :
plot(x,y,"l")

# ou les deux, cette fois en bleu par exemple :
plot(x,y,"o",col="red")

# Et on peut préciser le titre du graphe :
?title
title(main="Mon joli graphique")

# Et même tout faire en une fois :
plot(x,y,"o",col="blue", main="Fonction exponentielle", ylab="Axe des y",xlab="Axe des x")


# BONUS pour celles et ceux déjà à l'aise avec R
#################################################

# Essayez de comprendre ce que font ces différentes lignes de code


# Manipuler des tableaux

?paste
paste("X",1:5,sep="-")

?substr
substr("statistician",5,9)


# Manipuler des matrices

m <- matrix(1:4,nrow=2,byrow=TRUE)
?t
t(m) #transposé


# Des fonction qui permettent de classer ou d'ordonner :
?order
# Que fait cette fonction ?

x <- c(1,8,5,4)
order(x)


# Exercice 3.4 : Fonction apply
##########################################

#Calculer les indicateurs numériques standards (moyenne, min, max, etc.) des 3 
# variables du jeux de données ethanol (disponible dans le package lattice).

library(lattice)
data("ethanol")

summary(ethanol)
apply(ethanol, 2, mean)

#Calculer les quartiles de chaque variables. On pourra faire un apply avec la 
# fonction quantile.
?quantile
apply(ethanol, 2, quantile)


# Autres ressources pour aller plus loin :
##########################################
# https://www.nathalievialaneix.eu/doc/html/Part1-Intro.html

