--|=====================|
--|   Установщик Софта  |
--|    Soft Installer   |
--| Developer: Barawik_ |
--|  Holograms edition  |
--|=====================|
local shell = require("shell")
local fs = require("filesystem")
local event = require("event")
if not fs.exists("holo_print.lua") then
    shell.execute("wget https://github.com/BarawikS/Holo/blob/master/holograms/holo_print.lua holo_print.lua")
end
print("\nПрограмма для отображения установлена.")
os.sleep(2)
if not fs.exists("first_holo.holo") then
shell.execute("wget https://github.com/BarawikS/Holo/blob/master/holograms/test_holo.holo test_holo.holo")
end
print("\nТестовая голограмма установлена.")
-- Перезапуск компа
 print("\nЧтобы выключить инсталлер, нажмите.")
                local e = event.pull("touch")
                print("\nОтключение..")
                os.sleep(2)
                shell.execute("clear")
                os.sleep(1)
