:: Ścieżka do frameworka powinna się kończyć na \keengine (folder).
cd "%userprofile%\Desktop\keengine"
call engine.hide.write.n

call load.engine&&call load.console.code&&call load.codepage&&call load.console.write&&call load.exit.errorlevel&&call load.timeout
call load.function&&call load.internet&&call load.time.zone&&call load.int&&call load.math
call load.system_file&&call load.interaction&&call load.user&&call load.mods&&call engine.mods.internet&&call engine.mods.if_stack
call engine.mods.system_file&&call load.security&&call load.if_stack&&call load.tools&&call load.debug&&call load.KE.stack

call engine.hide.write.n
call engine.code.page.65001
call engine.show.title "Kalkulator sumy"
call engine.clear.console
call engine.empty.page
call engine.write "Wpisz tutaj pierwszą liczbę:"
call engine.set.int liczba1
call engine.timeout.pause.h
call engine.clear.console
call engine.empty.page
call engine.write "Wpisz tutaj drugą liczbę:"
call engine.set.int liczba2
call engine.set.int.calc "wynik=%liczba1%+%liczba2%"
call engine.clear.console
call engine.empty.page
call engine.write "Twój wynik, to:"
call engine.write.int %wynik%
call engine.empty.page
call engine.write "Wciśnij dowolny przycisk, aby wyjść."
call engine.timeout.pause.h
call engine.errorlevel 0
call engine.exit

:: Koniec programu, aplikacja zwróci kod błędu równy 0.
