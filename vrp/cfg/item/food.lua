-- define some basic inventory items

local items = {}

local function play_eat(player)
  local seq = {
    {"mp_player_inteat@burger", "mp_player_int_eat_burger_enter",1},
    {"mp_player_inteat@burger", "mp_player_int_eat_burger",1},
    {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp",1},
    {"mp_player_inteat@burger", "mp_player_int_eat_exit_burger",1}
  }

  vRPclient.playAnim(player,{true,seq,false})
end

local function play_drink(player)
  local seq = {
    {"mp_player_intdrink","intro_bottle",1},
    {"mp_player_intdrink","loop_bottle",1},
    {"mp_player_intdrink","outro_bottle",1}
  }

  vRPclient.playAnim(player,{true,seq,false})
end

-- Wasser
local water_choices = {}
water_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"water",1) then
      vRP.varyThirst(user_id,-25)
      vRPclient.notify(player,{"~b~ Trinke water."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["water"] = {"Wasserflasche","",water_choices,0.5}

-- create Milk item
local milk_choices = {}
milk_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"milk",1) then
      vRP.varyThirst(user_id,-5)
      vRPclient.notify(player,{"~b~ Trinke Milk."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["milk"] = {"Milch","",milk_choices,0.5}

-- create Coffee item
local coffee_choices = {}
coffee_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"coffee",1) then
      vRP.varyThirst(user_id,-10)
      vRPclient.notify(player,{"~b~ Trinke Coffee."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["coffee"] = {"Kaffee","",coffee_choices,0.2}

-- create Tea item
local tea_choices = {}
tea_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"tea",1) then
      vRP.varyThirst(user_id,-15)
      vRPclient.notify(player,{"~b~ Trinke Tea."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["tea"] = {"Tee","",tea_choices,0.2}

-- create iceTea item
local icetea_choices = {}
icetea_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"icetea",1) then
      vRP.varyThirst(user_id,-20)
      vRPclient.notify(player,{"~b~ Trinke ice-Tea."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["icetea"] = {"Eistee","",icetea_choices,0.5}

-- create Orange Juice item
local orangejuice_choices = {}
orangejuice_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"orangejuice",1) then
      vRP.varyThirst(user_id,-25)
      vRPclient.notify(player,{"~b~ Trinke Orange Juice."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["orangejuice"] = {"Orange Juice.","",orangejuice_choices,0.5}

-- create Goca Gola item
local gocagola_choices = {}
gocagola_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"gocagola",1) then
      vRP.varyThirst(user_id,-35)
      vRPclient.notify(player,{"~b~ Trinke Goca Gola."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["gocagola"] = {"CocaCola","",gocagola_choices,0.3}

-- create RedGull item
local redgull_choices = {}
redgull_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"redgull",1) then
      vRP.varyThirst(user_id,-40)
      vRPclient.notify(player,{"~b~ Trinke RedGull."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["redgull"] = {"Redbull","",redgull_choices,0.3}

-- create Lemon limonad item
local lemonlimonad_choices = {}
lemonlimonad_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"lemonlimonad",1) then
      vRP.varyThirst(user_id,-45)
      vRPclient.notify(player,{"~b~ Trinke Lemon limonad."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["lemonlimonad"] = {"Limonade","",lemonlimonad_choices,0.3}

-- create Vodka item
local vodka_choices = {}
vodka_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"vodka",1) then
      vRP.varyThirst(user_id,-65)
      vRP.varyHunger(user_id, 15)
      vRPclient.notify(player,{"~b~ Trinke Vodka."})
      vRPclient.playScreenEffect(player,{"DrugsDrivingIn",3*60})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["vodka"] = {"Vodka","",vodka_choices,0.5}

--FOOD

-- create Breed item
local breed_choices = {}
breed_choices["Eat"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"breed",1) then
      vRP.varyHunger(user_id,-10)
      vRPclient.notify(player,{"~o~ Esse Breed."})
      play_eat(player)
      vRP.closeMenu(player)
    end
  end
end}

items["breed"] = {"Brot","",breed_choices,0.5}

-- create Donut item
local donut_choices = {}
donut_choices["Eat"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"donut",1) then
      vRP.varyHunger(user_id,-15)
      vRPclient.notify(player,{"~o~ Esse Donut."})
      play_eat(player)
      vRP.closeMenu(player)
    end
  end
end}
items["donut"] = {"Donut","",donut_choices,0.2}

-- create Tacos item
local tacos_choices = {}
tacos_choices["Eat"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"tacos",1) then
      vRP.varyHunger(user_id,-25)
      vRPclient.notify(player,{"~o~ Esse Tacos."})
      play_eat(player)
      vRP.closeMenu(player)
    end
  end
end}
items["tacos"] = {"Tacos","",tacos_choices,0.2}

-- create sandwich item
local sd_choices = {}
sd_choices["Eat"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"sandwich",1) then
      vRP.varyHunger(user_id,-25)
      vRPclient.notify(player,{"~o~ Esse einen Sandwich."})
      play_eat(player)
      vRP.closeMenu(player)
    end
  end
end}

items["sandwich"] = {"Sandwich","A tasty snack.",sd_choices,0.5}

-- create Kebab item
local kebab_choices = {}
kebab_choices["Eat"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"kebab",1) then
      vRP.varyHunger(user_id,-45)
      vRPclient.notify(player,{"~o~ Esse Kebab."})
      play_eat(player)
      vRP.closeMenu(player)
    end
  end
end}

items["kebab"] = {"Kebab","",kebab_choices,0.85}

-- create Premium Donut item
local pdonut_choices = {}
pdonut_choices["Eat"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"pdonut",1) then
      vRP.varyHunger(user_id,-25)
      vRPclient.notify(player,{"~o~ Esse Premium Donut."})
      play_eat(player)
      vRP.closeMenu(player)
    end
  end
end}

items["pdonut"] = {"Premium Donut","",pdonut_choices,0.5}

return items
