﻿  
#language: ru
@tree

Функционал: Просмотр остатков с помощью отчета "Остатки товаров"

Как Менеджер по продажам я хочу
сформировать отчет по доступным остаткам
чтобы видеть все позиции на складе
Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
		И я закрываю все окна клиентского приложения

Сценарий: Загрузка тестовых данных
* Загрузка НСИ и Документа поступления
	КОгда выполняю загрузку справочников
	И выполняю загрузку поступлений

Сценарий: Формирование отчета: Остатки (сверка по макету) 
* Открытие отчета: Остатки
	И Я открываю навигационную ссылку "e1cib/app/Отчет.ОстаткиТоваровНаСкладах"
	Когда открылось окно 'Остатки товаров'
	И Пауза 10
* ЗАполнение шапки отчета: Остатки	
	И я нажимаю кнопку выбора у поля с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Значение"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000006' | 'Ботинки'      |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Остатки товаров'
	И из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент2Значение" я выбираю точное значение 'Таганрог порт'
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И Пауза 3
* Проверка заполнения  результата по макету
	И Табличный документ "Результат" равен макету "ОтчетОстаткиБотинки" по шаблону
	И я закрываю все окна клиентского приложения
	

Сценарий: Формирование отчета: Остатки (сверка по шаблону) 
* Открытие отчета: Остатки
	И Я открываю навигационную ссылку "e1cib/app/Отчет.ОстаткиТоваровНаСкладах"
	Когда открылось окно 'Остатки товаров'
	И Пауза 10
* ЗАполнение шапки отчета: Остатки	
	И я нажимаю кнопку выбора у поля с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Значение"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	Когда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000018' | 'Bosch15'      |
	Когда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
* Проверяю результат формированяиотчета: остатки
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И Пауза 3
	И я жду когда в табличном документе "Результат" заполнится ячейка "R6C2" в течение 20 секунд
	И табличный документ "Результат" содержит строки по шаблону:
		| 'Bosch15'| '2,00' |'2,00' |
		| 'Итого'  | '2,00' |'2,00' |
	
	И я закрываю все окна клиентского приложения
