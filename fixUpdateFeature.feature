﻿#language: ru
@ExportScenarios

@tree

Функционал: экспортные сценарии для решения проблем с отсутствием обновления данных в панели разделов и панели функций

Сценарий: обновление панели функций
	Когда В панели разделов я выбираю 'Мотивация'	
	И я нажимаю на HTML элемент "document.querySelector(\'#funcPanel_cmd_panelMenu\')" в браузере
	И я нажимаю на HTML элемент "document.querySelector(\'#popupItem1\')" в браузере
	Когда открылось окно 'Настройка панели действий'
	И я нажимаю на кнопку с именем 'CmdInsertDefaultAll'
	И в таблице "CurrentCommandsTable" я перехожу к строке:
		| 'Name'    |
		| 'Создать' |
	И я нажимаю на кнопку с именем 'CmdRemove'
	И я нажимаю на кнопку с именем 'CmdOK'

Сценарий: обновление подсистем
	И я нажимаю на HTML элемент "document.querySelector(\'#captionbarMore\')" в браузере
	И я нажимаю на HTML элемент "document.querySelector(\'#ServiceButton\')" в браузере
	И Пауза 1
	И я нажимаю на HTML элемент "document.querySelector(\'#customizeTopLevelButton\')" в браузере
	Когда открылось окно 'Настройка панели разделов'
	И я нажимаю на кнопку с именем 'CmdRemoveAll'
	И я нажимаю на кнопку с именем 'CmdInsertDefaultAll'
	И я нажимаю на кнопку с именем 'CmdOK'
	И Пауза 1