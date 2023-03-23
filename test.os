#Использовать "."

// Делегат = Лямбда.Выражение(
// 	"(Элемент, ЭлементВторой) -> 
// 	|  Сообщить(Элемент);
// 	|  Сообщить(ЭлементВторой);
// 	|  Сообщить(""Второй"");
// 	| Возврат;")
// 	// .Интерфейс(ФункциональныеИнтерфейсы.УниПроцедура())
// 	.ВДействие();

// Сообщить(Делегат.Выполнить("ААА", "БББББ"));

Процедура УдалитьПоУсловию(Массив, Условие)
	
	Действие = Лямбда.Выражение(Условие)
		.Интерфейс(ФункциональныеИнтерфейсы.УниФункция())
		.ВДействие();

	Граница = Массив.ВГраница();

	Для Индекс = 0 По Граница Цикл

		Если Действие.Выполнить(Массив[Граница - Индекс]) Тогда
			Массив.Удалить(Граница - Индекс);
		КонецЕсли;

	КонецЦикла;

КонецПроцедуры

Массив = Новый Массив;

Массив.Добавить(1);
Массив.Добавить(2);
Массив.Добавить(3);

УдалитьПоУсловию(Массив, "(Элемент) -> {
	| Сообщить(Элемент);
	| Если Элемент >= 2 Тогда
	|    Сообщить(""Элемент оказался больше двух, бум удалять"");
	| КонецЕсли;
	| 
	| Возврат Элемент >= 2
	|}");
 
Сообщить(Массив.Количество());