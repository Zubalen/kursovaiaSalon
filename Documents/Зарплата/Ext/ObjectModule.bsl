﻿
Процедура ОбработкаПроведения(Отказ, Режим)
	// регистр Зарплата Расход
	Движения.Зарплата.Записывать = Истина;
	Для Каждого ТекСтрокаСотрудники Из Сотрудники Цикл
		Движение = Движения.Зарплата.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Расход;
		Движение.Период = Дата;
		Движение.Сотрудник = ТекСтрокаСотрудники.Сотрудник;
		Движение.Месяц = Месяц;
		Движение.Сумма = ТекСтрокаСотрудники.Сумма;
	КонецЦикла;
КонецПроцедуры
