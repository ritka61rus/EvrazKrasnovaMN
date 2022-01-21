﻿#language: ru

@tree

Функционал: создание заказа клиента с услугами

Как Менеджер отдела продаж я хочу
выполнить создание Заказа КЛиента
чтобы реализовать услугу клиенту

Контекст:
Дано Я открыл сеанс TestClient от имени "Тест_МенеджерОтделаПродаж" с паролем "" или подключаю уже существующий

Сценарий: создание документа заказ клиента
* открытие формы создания документа
	и я закрыл все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы клиентов'
	Когда открылось окно 'Заказы клиентов'
	И в таблице "Список" я нажимаю на кнопку с именем 'СписокСтандартныеНастройкиДинамическогоСписка'
	И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
	Тогда открылось окно 'Заказ клиента (создание)'
* заполнение вкладки "основное"
	И я нажимаю кнопку выбора у поля с именем "ПартнерБезКЛ"
	Тогда открылось окно 'Партнеры (Клиенты)'
	И в таблице "Список" я нажимаю на кнопку с именем 'ФормаНайти'
	Тогда открылось окно 'Найти'
	И в поле с именем 'Pattern' я ввожу текст 'Познин Фёдор Михайлович'
	И я нажимаю на кнопку с именем 'Find'
	Тогда открылось окно 'Партнеры (Клиенты)'
	И в таблице "Список" я активизирую поле с именем "Наименование"
	И в таблице "Список" я выбираю текущую строку
	Если  открылось окно '1С:Предприятие' тогда
		И я нажимаю на кнопку с именем 'Button0'
	Тогда открылось окно 'Заказ клиента (создание) *'
	И я нажимаю кнопку выбора у поля с именем "Соглашение"
	Тогда открылось окно 'Соглашения об условиях продаж'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'                 |  
		| 'Типовое соглашение Таганрог' |
	И в таблице "Список" я выбираю текущую строку
	И я нажимаю кнопку выбора у поля с именем "Склад"
	Тогда открылось окно 'Склады и магазины'
	И в таблице "Список" я разворачиваю текущую строку
	И в таблице "Список" я разворачиваю строку:
		| 'Наименование'    |
		| 'Таганрог Склады' |
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'           | 'Подразделение' |
		| 'Таганрог, Химическая 9' | 'Таганрог'      |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ клиента *'
* проверка товарной части на добавление услуг
	И я перехожу к закладке с именем "ГруппаТовары"
	И в таблице "Товары" я активизирую поле с именем "ТоварыНоменклатура"
	И я выбираю пункт контекстного меню с именем 'ТоварыКонтекстноеМенюУдалить' на элементе формы с именем "Товары"
	И в таблице "Товары" я добавляю строку
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыНоменклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "ВидыНоменклатуры" я разворачиваю строку:
		| 'Наименование' |
		| 'Услуги'       |
	И в таблице "ВидыНоменклатуры" я перехожу к строке:
		| 'Наименование'                               |
		| 'Услуги МП с индивидуальной характеристикой' |
	И в таблице "СписокРасширенныйПоискНоменклатура" я перехожу к строке:
		| 'Наименование'                                                                                                                                                                          |
	 	| 'Порезка металлопроката (газовая) для Розницы' |
	И я нажимаю на кнопку с именем 'СписокРасширенныйПоискНоменклатураВыбратьЗначениеНоменклатуры'
	Тогда открылось окно 'Заказ клиента *'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыХарактеристика"
	Тогда открылось окно 'Характеристики номенклатуры'
	И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
	Тогда открылось окно 'Найти'
	И в поле с именем 'Pattern' я ввожу текст 'Газовая резка'
	И я нажимаю на кнопку с именем 'Find'
	Тогда открылось окно 'Характеристики номенклатуры'
	И в таблице "Список" я активизирую поле с именем "Наименование"
	И в таблице "ДеревоОтборов" я активизирую поле с именем "ДеревоОтборовПредставление"
	И в таблице "Список" я нажимаю на кнопку с именем 'СписокВыбрать'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст '1'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыЗаполнитьОбеспечение'
	Тогда открылось окно 'Заполнение обеспечения и отгрузки'
	И я устанавливаю флаг с именем 'Отгрузить'
	И я перехожу к закладке с именем "СтраницаПодсказкаПоОстаткам"
	И я нажимаю на кнопку с именем 'Заполнить'
	Когда открылось окно 'Заказ клиента *'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* номер
	И я запоминаю значение поля с именем 'Номер' как "НомерЗК"
* проведение документа
	Тогда открылось окно 'Заказ клиента *'
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заказ клиента * от *' в течение 20 секунд
* проверка создания документа
	Когда открылось окно 'Заказы клиентов'
	И в таблице "Список" я нажимаю на кнопку с именем 'СписокУстановитьИнтервал'
	Тогда открылось окно 'Выберите период'
	И я нажимаю кнопку выбора у поля с именем "DateBegin"
	И в поле с именем 'DateBegin' я ввожу текущую дату
	И я нажимаю на кнопку с именем 'Select'
	И таблица "Список" содержит строки :
		| 'номер'            |     
		| '$НомерЗК$'        | 
	
