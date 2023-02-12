﻿#language: ru

@tree

Функционал: <описание фичи>

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я активизирую браузер и устанавливаю полноэкранный режим
	Когда В панели разделов я выбираю 'Мотивация'
Сценарий: общая информация о справочнике грейды
*Теперь подробнее о справочнике грейды
	И я рисую рамку вокруг элемента панели функций "Грейды" в браузере 
		|'color'|'red'|
		|'size'|'3'|
		|'timeout'|'2500'|
	И В панели функций я выбираю 'Грейды'
*Мы видим список грейдов, которые доступны для использования для любой из организаций в базе
	И я рисую рамку по координатам в браузере
		|'left'|'210'|
		|'top'|'262'|
		|'width'|'130'|
		|'height'|'290'|
		|'color'|'red'|
		|'size'|'3'|
		|'timeout'|'3000'|
	И Пауза 3
*Рассмотрим справочник подробнее
	И в таблице "Список" я выбираю текущую строку
*в нем мы можем поменять наименование
	И я рисую рамку вокруг элемента "Наименование:" в браузере
		|'color'|'red'|
		|'size'|'3'|
		|'timeout'|'2000'|
*установить на форме признак того, что данный элемент больше не используется
	И Пауза 3
	И я рисую рамку по координатам в браузере
		|'left'|'734'|
		|'top'|'158'|
		|'width'|'16'|
		|'height'|'16'|
		|'color'|'red'|
		|'size'|'3'|
		|'timeout'|'2000'|
*и добавить описание для данного элемента
	И я рисую рамку по координатам в браузере
		|'left'|'306'|
		|'top'|'222'|
		|'width'|'84'|
		|'height'|'28'|
		|'color'|'red'|
		|'size'|'3'|
		|'timeout'|'2000'|
	И я перехожу к закладке с именем "СтраницаОписание"
	И я рисую рамку по координатам в браузере
		|'left'|'218'|
		|'top'|'256'|
		|'width'|'220'|
		|'height'|'100'|
		|'color'|'red'|
		|'size'|'3'|
		|'timeout'|'2000'|
//*при включении в настройках флага "Предоставляются льготы сотрудникам"
//	Когда В панели разделов я выбираю 'Мотивация'
//	И я устанавливаю флаг с именем 'ИспользоватьЛьготыСотрудников'
//*на форме справочника нам становится доступна табличная часть "льготы"
//*Данные ограничения по ФОТ, начислений и льгот, отображаемые на форме мы поменять не можем
//*для этого разработчиками предусмотрено рабочее место "Работа с грейдами", в которое можно перейти прямо из формы справочника
//*данные из этих таблиц хранятся не в самом справочнике, а в регистрах сведений:
//*"Ограничения ФОТ грейдов" 
//*"Использование начислений показателей грейдов" 
//*"Значения показателей расчета зарплаты грейдов"