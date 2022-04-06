﻿#language: ru

@tree
@ExportScenarios
@IgnoreCIonMainBuild
Функционал: Экспортные сценарии для документа Расход товара


Сценарий: я заполняю шапку документа Расход товара (ЭС)
	Когда открылось окно 'Продажа товара (создание)'
	И я нажимаю на кнопку открытия поля с именем "Организация"
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И я нажимаю кнопку выбора у поля с именем "Покупатель"
	Тогда открылось окно 'Контрагенты'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000011' | 'Светоффф'     |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Продажа товара (создание) *'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Таганрог порт'
	И из выпадающего списка с именем "ВидЦен" я выбираю точное значение 'Мелкооптовая'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
Сценарий: я выбираю товар через Подбор
	Когда открылось окно 'Продажа товара *'
	И в таблице "Товары" я нажимаю на кнопку с именем 'КомандаПодбор'
	Тогда открылось окно 'Подбор товара'
	И в таблице "ДеревоТоваров" я разворачиваю текущую строку
	И в таблице "ДеревоТоваров" я разворачиваю строку:
		| 'Наименование' |
		| 'Обувь'        |
	И в таблице "ДеревоТоваров" я перехожу к строке:
		| 'Наименование' |
		| 'Обувь'        |
	И в таблице "СписокТоваров" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000002' | 'Сапоги'       |
	И я нажимаю на кнопку с именем 'ОК'
	Тогда открылось окно 'Продажа товара *'
	И в таблице "Товары" я нажимаю на кнопку с именем 'КомандаПодбор'
	Тогда открылось окно 'Подбор товара'
	И в таблице "ДеревоТоваров" я разворачиваю  строку
		| 'Наименование' |
		| 'Товары'        |
	И в таблице "ДеревоТоваров" я разворачиваю строку:
		| 'Наименование' |
		| 'Обувь'        |
	И в таблице "ДеревоТоваров" я перехожу к строке:
		| 'Наименование' |
		| 'Обувь'        |
	И в таблице "СписокТоваров" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000002' | 'Сапоги'       |
	И я выбираю пункт контекстного меню с именем 'СписокТоваровКонтекстноеМенюВыбрать' на элементе формы с именем "СписокТоваров"
	И в таблице "Товары" я активизирую поле с именем "ТоварыТовар"
	И в таблице "Товары" я перехожу к строке:
		| 'Количество' | 'Товар'  |
		| '1,00'       | 'Сапоги' |
	И в таблице "Товары" я выбираю текущую строку
	
Сценарий: я сохраняю и провожу документ Продажа
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И Пауза 3
	Тогда открылось окно 'Продажа * от *'
	И я нажимаю на кнопку с именем 'ФормаПровести'
	И Пауза 3		

