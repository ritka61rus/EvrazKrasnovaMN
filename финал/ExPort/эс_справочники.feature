﻿#language: ru

@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Загрузка справочников

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: выполняю загрузку справочников

	И Я устанавливаю в константу "УчетПоСкладам" значение "Истина"
	
	// Справочник.Склады
	
	И я проверяю или создаю для справочника "Организации" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Код'       | 'Наименование'       | 'ВалютныйУчет' |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' | 'False'           | '000000053' | 'ООО "Тритон"' | 'False'        |

	И я проверяю или создаю для справочника "Склады" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НеИспользовать' |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | 'False'           | '000000002' | 'Таганрог порт'      | 'False'          |
	// Справочник.Регионы

	И я проверяю или создаю для справочника "Регионы" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | 'False'           | '000000001' | 'таганрог'       |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4231' | 'False'           | '000000003' | 'таганрог 1'         |

	
	// Справочник.ВидыЦен

	И я проверяю или создаю для справочника "ВидыЦен" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e31db7c4c9d5c4224' | 'False'           | '000000011' | 'Розница'    |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000098d49b45e11db8c4c9d5c4225' | 'False'           | '000000012' | 'Опт'      |

	// Справочник.Контрагенты

	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель'                                                               | 'ЭтоГруппа' | 'Код'       | 'Наименование'  | 'Регион'                                                             | 'Индекс' | 'Страна' | 'Город'    | 'Улица'          | 'Дом' | 'Телефон'      | 'ЭлектроннаяПочта' | 'Факс' | 'ВебСайт' | 'ВидЦен'                                                             | 'ДополнительнаяИнформация' | 'КонтактноеЛицо' | 'Широта'  | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'           | ''                                                                       | 'True'      | '000000001' | 'Мир света'     | ''                                                                   | ''       | ''       | ''         | '' | ''    | ''             | ''                 | ''     | ''        | ''                                                                   | ''                         | ''               | ''        | ''        |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c4235' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000005' | 'Электороник'   | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '121456' | 'Россия' | 'Таганрог' | ''    | '33'  | '+7(908)22222' | ''                 | ''     | ''        | ''                                                                   | ''                         | ''          | 35.88695  | 22.64777  |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000011' | 'Светоффф'      | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4231' | ''       | 'Россия' | 'Таганрог' | ''         | '12'  | '+7(909)11211' | ''                 | ''     | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e31db7c4c9d5c4224' | 'т'                         | ''     | 76.869649 | 230.54777  |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710079' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000013' | 'чистодом"'     | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '127400' | 'Россия' | 'Таганрог' | ''         | '21'  | '+7(907)55554' | ''                 | ''     | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000098d49b45e11db8c4c9d5c4225' | ''                         | ''        | 58.786613 | 44.70661  |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'           | ''                                                                       | 'True'      | '000000002' | 'ип гильмияров' | ''                                                                   | ''       | ''       | ''         | ''       | ''    | ''             | ''                 | ''     | ''        | ''                                                                   | ''                         | ''     | ''        | ''        |

	
	// Справочник.Товары

	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель'                                                          | 'ЭтоГруппа' | 'Код'       | 'Наименование'  | 'Артикул' | 'Поставщик'                                                              | 'ФайлКартинки' | 'Вид'                     | 'Штрихкод' |
		| 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aae' | 'False'           | ''                                                                  | 'True'      | '000000036' | 'Услуги'        | ''        | ''                                                                       | ''             | ''                        | ''         |
		| 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aaf' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aae' | 'False'     | '000000037' | 'Доставка'      | ''        | ''                                                                       | ''             | 'Enum.ВидыТоваров.Услуга' | ''         |
		| 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079ae' | 'False'           | ''                                                                  | 'True'      | '000000001' | 'Обувь'         | ''        | ''                                                                       | ''             | ''                        | ''         |
		| 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db90eb5198ae43' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079ae' | 'False'     | '000000006' | 'Ботинки'       | 'TR004'  | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c4235' | ''             | 'Enum.ВидыТоваров.Товар'  | ''         |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9743e844ecac' | 'False'           | ''                                                                  | 'True'      | '000000012' | 'Электротовары' | ''        | ''                                                                       | ''             | ''                        | ''         |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db97442336eb53' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9743e844ecac' | 'True'      | '000000013' | 'Чайники'       | 'RR004'        | ''                                                                       | ''             | ''                        | ''         |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9744d21cfa19' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db97442336eb53' | 'False'     | '000000018' | 'Bosch15'       | 'RR0005'  | 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | ''             | 'Enum.ВидыТоваров.Товар'  | ''         |
	
		И Я запоминаю значение выражения '{ТекущаяДата()-24*60*60}' в переменную "новая дата"

	И я проверяю или создаю для регистра сведений "ЦеныТоваров" записи:
		| 'Период'       | 'Товар'                                                             | 'ВидЦен'                                                             | 'Цена' |
		| '$новая дата$' | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db90eb5198ae43' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e31db7c4c9d5c4224' | 10000  |
		| '$новая дата$' | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db90eb5198ae43' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000098d49b45e11db8c4c9d5c4225' | 10001  |
		| '$новая дата$' | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db90eb5198ae43' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 10002  |
		| '$новая дата$' | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9744d21cfa19' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e31db7c4c9d5c4224' | 10003  |
		| '$новая дата$' | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9744d21cfa19' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000098d49b45e11db8c4c9d5c4225' | 10004  |
		| '$новая дата$' | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9744d21cfa19' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 10005  |

