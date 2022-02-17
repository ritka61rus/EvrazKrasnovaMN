﻿#language: ru

@tree

Функционал: выполнение проверки отображение возвратов в отчете D2001 Продажи

Как пользователь CI я хочу
проверить отражение возвратов в отчете  D2001 Продажи 
чтобы убедиться отчет рабочий
Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий 
И я закрываю все окна клиентского приложения

Сценарий: отображение возвратов в отчете D2001 Продажи
* Открытие формы документа Возрата Товаров
	И В командном интерфейсе я выбираю 'Продажи' 'Возвраты товаров от покупателей'
	Тогда открылось окно 'Возвраты товаров от покупателей'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Возврат товаров от покупателя (создание)'

* Заполнение шапки документа
	И я нажимаю кнопку выбора у поля с именем "Partner"
	Тогда открылось окно 'Партнеры'
	И в таблице "List" я перехожу к строке:
		| 'Код' | 'Наименование'       |
		| '13'   | 'ИП Затейный Пирог Петрович' |
	И я нажимаю на кнопку с именем 'FormChoose'

	И я нажимаю кнопку выбора у поля с именем "Company"
	Тогда открылось окно 'Организации'
	И в таблице "List" я перехожу к строке:
		| 'Код' | 'Наименование'           |
		| '1'   | 'Собственная компания 1' |
	И я нажимаю на кнопку с именем 'FormChoose'
	
* Заполнение товаров
	Тогда открылось окно 'Возврат товаров от покупателя (создание) *'
	И в таблице "ItemList" я нажимаю на кнопку с именем 'ItemListAdd'
	И в таблице "ItemList" я нажимаю кнопку выбора у реквизита с именем "ItemListItem"
	Тогда открылось окно 'Номенклатура'
	И в таблице "List" я перехожу к строке:
		| 'Код' | 'Наименование' |
		| '5'   | 'Набор'        |
	И в таблице "List" я выбираю текущую строку
	Тогда открылось окно 'Возврат товаров от покупателя (создание) *'
	И в таблице "ItemList" я нажимаю кнопку выбора у реквизита с именем "ItemListItemKey"
	Тогда открылось окно 'Характеристики'
	И в таблице "List" я перехожу к строке:
		| 'Код' | 'Характеристика' |
		| '11'  | 'Набор/'         |
	И я нажимаю на кнопку с именем 'FormChoose'
	И в таблице "ItemList" в поле с именем 'ItemListQuantity' я ввожу текст '1,000'
	И в таблице "ItemList" в поле с именем 'ItemListPrice' я ввожу текст '5 000,00'
	И в таблице "ItemList" я завершаю редактирование строки

* Проведение Документа	
	И я нажимаю на кнопку с именем 'FormPost'
	Тогда открылось окно 'Возврат товаров от покупателя *'
	И я запоминаю текущее окно как "ДокНомЛок"
	И я нажимаю на кнопку с именем 'FormPostAndClose'
	И я жду закрытия окна 'Возврат товаров от покупателя (создание) *' в течение 20 секунд

* Формирование отчета с  регистратором
	И В командном интерфейсе я выбираю 'Отчеты' 'D2001 Продажи'
	Тогда открылось окно 'D2001 Продажи *'
	И я нажимаю на кнопку с именем 'FormLoadVariant'
	Тогда открылось окно 'Загрузить форму'
	И в таблице "OptionsList" я активизирую поле с именем "OptionsListReportOption"
	И в таблице "OptionsList" я перехожу к строке:
		| 'Автор' | 'Вариант отчета'    |
		| 'CI'    | 'Тестовый вариант1' |
	И я нажимаю на кнопку с именем 'FormLoadSetting'
	Тогда открылось окно 'D2001 Продажи (Тестовый вариант1)'
	И я нажимаю на кнопку с именем 'FormGenerate'

* Проверка на наличия строки с номером документа
	И табличный документ "Result" содержит значения:
		| "$ДокНомЛок$" |
	Когда открылось окно 'D2001 Продажи (Тестовый вариант1)'
	И я закрываю все окна клиентского приложения
	
