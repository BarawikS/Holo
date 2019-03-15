--|=====================|
--|   Установщик Софта  |
--|    Soft Installer   |
--| Developer: Barawik_ |
--|  Holograms edition  |
--|=====================|
local shell = require("shell")
local fs = require("filesystem")
local event = require("event")
	print("\nУдаление старых файлов.")
	os.sleep(1)
	shell.execute("rm holo_print.lua")
	shell.execute("rm test_holo.holo")
	print("\nСтарые файлы удалены.")
	os.sleep(1)
	print("\nПодготовка к установке новым файлам.")
	os.sleep(2)
    shell.execute("wget https://raw.githubusercontent.com/BarawikS/Holo/master/holograms/holo_print.lua holo_print.lua")
print("\nПрограмма для отображения установлена.")
os.sleep(2)
shell.execute("wget https://raw.githubusercontent.com/BarawikS/Holo/master/holograms/test_holo.holo test_holo.holo")
print("\nТестовая голограмма установлена.")
-- Перезапуск компа
 print("\nЧтобы отключить инсталлер, просто тыкните.")
                local e = event.pull("touch")
                print("\nОтключение")
                os.sleep(2)
                shell.execute("clear")
				os.sleep(1)
