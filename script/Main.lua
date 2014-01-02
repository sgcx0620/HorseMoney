--[[**************************************************************************** 
Copyright (c) 2014 xSkyCity
Descript: Main entrance for horseMoney project.

author logs:
shangguanchenxi (sgcx0620@gmail.com 2014/1/2) desc:
****************************************************************************]]

require("HorseMoney/script/init")
require("HorseMoney/script/ldb")

function __G__TRACKBACK__(msg)
    print("----------------------------------------")
    print("LUA ERROR: " .. tostring(msg) .. "\n")
    print(debug.traceback())
    print("----------------------------------------")
end

function main()
	math.randomseed(os.time())


	local testScene  = CCScene:create()
	local testLayer  = CCLayer:create()
	local testSprite = CCSprite:create("HorseMoney/assets/test.png")

	testSprite:setPosition(200, 200)

	testLayer:addChild(testSprite)
	testScene:addChild(testLayer)
	CCDirector:sharedDirector():runWithScene(testScene)
end

xpcall(main, __G__TRACKBACK__)