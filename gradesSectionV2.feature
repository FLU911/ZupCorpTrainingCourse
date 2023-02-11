﻿#language: ru

@tree

Функционал: <описание фичи>

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я активизирую браузер и устанавливаю полноэкранный режим
Сценарий: <описание сценария>
*Подраздел грейды и его элементы становятся доступными для использования в подсистеме Мотивация после установки дополнительных настроек
	И Пауза 3
*Зайдем в раздел Настройка
	И я рисую рамку вокруг элемента панели разделов "Настройка" в браузере
		|'color'|'red'|
		|'size'|'3'|
		|'timeout'|'2500'| 
	Когда В панели разделов я выбираю 'Настройка'
*выберем в меню управление персоналом	
	И я рисую рамку вокруг элемента панели функций "Управление персоналом" в браузере 
		|'color'|'red'|
		|'size'|'3'|
		|'timeout'|'2500'|
	И В панели функций я выбираю 'Управление персоналом'
*и установим флаг Используются грейды
	И я рисую рамку вокруг элемента "ИспользоватьГрейды" в браузере
		|'color'|'red'|
		|'size'|'3'|
		|'timeout'|'3000'|
	И я изменяю флаг с именем 'ИспользоватьГрейды'
	И Я закрываю окно 'Управление персоналом'
#[autodoc.ignorestep]	
*игнорируемые шаги для обновления подсистем(по крайней мере у меня на 8.3.23 подсистемы не обновляются)
	И Пауза 0.1
	И обновление подсистем
*Теперь нам стала доступна подсистема мотивация
	И я показываю подсказку " здесь стала доступна подсистема мотивация" EnjoyHint по координатам "Мотивация" в браузере
		|'left'|'0'|
		|'top'|'135'|
		|'width'|'185'|
		|'height'|'36'|
		|'shape'|'rect'|
		|'timeout'|'5000'|
		|'noFreeze'|'false'|
*В ней мы можем выбрать следующие опции:
	Когда В панели разделов я выбираю 'Мотивация'	
	И Пауза 1
*отчеты по мотивации, где мы можем получить детальную информацию по грейдам в разрезе организаций, сотрудников, должностей и т.п.
	И я рисую рамку вокруг элемента панели функций "Отчеты по мотивации" в браузере 
		|'color'|'red'|
		|'size'|'3'|
		|'timeout'|'2500'|
*работы с грейдами - рабочее место для настройки свойств грейдов
	И я рисую рамку вокруг элемента панели функций "Работа с грейдами" в браузере 
		|'color'|'red'|
		|'size'|'3'|
		|'timeout'|'2500'|
*грейды - справочник, в котором список грейдов и хранится
	И я рисую рамку вокруг элемента панели функций "Грейды" в браузере 
		|'color'|'red'|
		|'size'|'3'|
		|'timeout'|'2500'|
*Но это не все возможности данного раздела
	И Пауза 1
*При включении в Настройках опции "использовать инструмент создание грейдов"
	Когда В панели разделов я выбираю 'Настройка'
	И В панели функций я выбираю 'Управление персоналом'
	И я рисую рамку вокруг элемента "ИспользоватьСозданиеГрейдов" в браузере
		|'color'|'red'|
		|'size'|'3'|
		|'timeout'|'2500'|
	И я устанавливаю флаг с именем 'ИспользоватьСозданиеГрейдов'
	И Я закрываю окно 'Управление персоналом'
#[autodoc.ignorestep]
*игнорируемые шаги для обновления панели функций(по крайней мере у меня на 8.3.23 подсистемы не обновляются)
	И Пауза 0.1
	и обновление панели функций
*в нашей подсистеме появляется возможность использовать рабочее место "Создание грейдов"	
	Когда В панели разделов я выбираю 'Мотивация'
	И я рисую рамку вокруг элемента панели функций "Создание грейдов" в браузере 
		|'color'|'red'|
		|'size'|'3'|
		|'timeout'|'2500'|
*а также справочник критерии оценки, который используется в данном инструменте
	И я рисую рамку вокруг элемента панели функций "Критерии оценки" в браузере 
		|'color'|'red'|
		|'size'|'3'|
		|'timeout'|'2500'|