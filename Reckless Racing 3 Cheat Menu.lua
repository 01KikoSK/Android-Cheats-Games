-- Reckless Racing 3 Cheat Script

-- Define variables
local gameName = "Reckless Racing 3"
local gameVersion = "1.2.1"
local gamePackage = "com.pixelbite.rr3"

-- Initialize GameGuardian
gg.alert("Welcome to the Reckless Racing 3 Cheat Script!")
gg.setPackage(gamePackage)

-- Define functions
function cheatMoney()
  -- Code to cheat money goes here
end

function cheatGold()
  -- Code to cheat gold goes here
end

-- Main menu
local menu = {
  {name="Money Cheat", action=cheatMoney},
  {name="Gold Cheat", action=cheatGold},
}

-- Show main menu
gg.choice(menu, nil, "Select a cheat:")


-------------------------------------------------------------- part 2 DELETE ME <---

function cheatMoney()
    -- Search for the money value
    local moneySearch = gg.searchNumber("1000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0)
  
    -- If the search was successful, change the money value
    if moneySearch > 0 then
      gg.getResults(moneySearch)
      gg.editAll("999999", gg.TYPE_FLOAT)
      gg.alert("Money cheat successful!")
    else
      gg.alert("Money cheat failed.")
    end
  end