-- |=================================|
-- |  Основная программа для печати  |
-- |  Голограмм на гологр.проекторе  |
-- |  Проект: MCSkill.ru Сервер:TMSB |
-- |  Developer: Barawik_ Modded: No |
-- |=================================|
local shell = require("shell")
local fs = require("filesystem")
shell.execute("rm test_holo.holo")
shell.execute("wget https://github.com/BarawikS/Holo/blob/master/holograms/test_holo.holo test_holo.holo")
  print("\nТестовая голограмма установлена")
  os.sleep(1)
  print("\nМожно продолжать пользоваться программой.")
  os.sleep(2)

component = require("component")
holo = component.hologram
gpu = component.gpu
string1 = ""
z = 24
i = 0

holo.clear()


--считывание файла и вывод на голограмму

print("Путь к файлу:")
wayName = io.read()
file = io.open(wayName,"r")
while string1 do
  i = i + 1
  string1 = file:read()
end
file:close()

file= io.open(wayName,"r")
  holo.setTranslation(#file:read()/2,0,0)
file:close()


file = io.open(wayName,"r")
for y = 1, i do
  string = file:read()
  for x = 1, #string do
    var = string:sub(x,x)
    gpu.set(x,y,var)
      if var == "1" then
        color = 1
      elseif var == "2" then
        color = 2
      elseif var == "3" then
        color = 3
      else color = 0
      end
    holo.set(x,32-y,z,color)
  end
end
holo.setRotationSpeed(20,0,1,0)
file:close()
