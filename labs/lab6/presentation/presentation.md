---
## Front matter
lang: ru-RU
title: Лабораторная Работа №6. Модель эпидемии
subtitle: Математическое моделирование
author:
  - Боровиков Д.А.
institute:
  - Российский университет дружбы народов им. Патриса Лумумбы, Москва, Россия

## i18n babel
babel-lang: russian
babel-otherlangs: english

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'

## Fonts
mainfont: Arial
romanfont: Arial
sansfont: Arial
monofont: Arial
---


## Докладчик


  * Боровиков Даниил Александрович
  * НПИбд-01-22
  * Российский университет дружбы народов
  * [1132222006@pfur.ru]


## Цели и задачи

Изучить и построить модель эпидемии.

## Julia


![Графики численности особей трех групп S, I, R, построенные на Julia, для случая, когда больные изолированы](image/1.png){#fig:001 width=70%}

## Julia


![Графики численности особей трех групп S, I, R, построенные на Julia, для случая, когда больные могут заражать особей группы S](image/2.png){#fig:002 width=60%}

## OpenModelica

![Графики численности особей трех групп S, I, R, построенные на Julia, для случая, когда больные изолированы](image/3.png){#fig:003 width=70%}

## OpenModelica

![Графики численности особей трех групп S, I, R, построенные на Julia, для случая, когда больные могут заражать особей группы S](image/4.png){#fig:004 width=60%}

## Вывод

В ходе выполнения лабораторной работы была изучена модель эпидемии и построена модель на языках Julia и Open Modelica.
