local M = class("LoginScene",function ()
    return cc.Scene:create()
end)

function M:ctor()
	self.frameSize = cc.Director:getInstance():getWinSize()
    self.origin = cc.Director:getInstance():getVisibleOrigin()
    self.schedulerID = nil
	self:init()
    print(">>>>>>>>>>>>>1")
end

function M:init()
	self:initBgLayer()
	
	self:initItems()
end

function M:initBgLayer()
	local bgLayer = cc.LayerColor:create(cc.c4b(0xff, 0xff, 0xff, 0xff), self.frameSize.width, self.frameSize.height)

	print(self.frameSize.width/2, self.frameSize.height/2)
	local bg = cc.Sprite:create("login_bg.png")
	bg:setAnchorPoint(cc.p(0.5, 0.5))
    bg:setPosition(self.frameSize.width/2, self.frameSize.height/2 + 120)
    bgLayer:addChild(bg)

	self:addChild(bgLayer)
	
	self.bgLayer = bgLayer
end

function M:initItems()
    local accountLabel = cc.Label:createWithSystemFont("账  号: ", "arial", 28)
    accountLabel:setColor(ccc3(238,130,238))
	accountLabel:setPosition(self.frameSize.width/2 - 110, self.frameSize.height/2-80)
	self.bgLayer:addChild(accountLabel)
	
	local accountEdit= cc.EditBox:create({width = 201, height = 45}, "edit_bg.png")
    accountEdit:setPosition(self.frameSize.width/2 + 50 , self.frameSize.height/2-80)
    self.bgLayer:addChild(accountEdit)

	local passwdLabel = cc.Label:createWithSystemFont("密  码: ", "arial", 28)
    passwdLabel:setColor(ccc3(238,130,238))
	passwdLabel:setPosition(self.frameSize.width/2 - 110, self.frameSize.height/2-140)
	self.bgLayer:addChild(passwdLabel)
	
	local passwdEdit= cc.EditBox:create({width = 201, height = 45}, "edit_bg.png")
    passwdEdit:setPosition(self.frameSize.width/2 + 50 , self.frameSize.height/2-140)
    self.bgLayer:addChild(passwdEdit)

	local loginBtn = ccui.Button:create("btn.png")
    loginBtn:setScale(0.6)
	loginBtn:setAnchorPoint(cc.p(0.5, 0.5))
    loginBtn:setPosition(self.frameSize.width/2 - 105 , self.frameSize.height/2 - 200)
	loginBtn:setTitleText("登    陆")
	loginBtn:setTitleFontSize(35)
	self.bgLayer:addChild(loginBtn)
	
	local registerBtn = ccui.Button:create("btn.png")
    registerBtn:setScale(0.6)
	registerBtn:setAnchorPoint(cc.p(0.5, 0.5))
    registerBtn:setPosition(self.frameSize.width/2 + 105, self.frameSize.height/2 - 200)
	registerBtn:setTitleText("注    册")
	registerBtn:setTitleFontSize(35)
	self.bgLayer:addChild(registerBtn)
	
    --self:addChild(loginBtn)
   -- loginBtn:addClickEventListener(function(sender)
    --    self:BtndEvent(sender)
   --end)
end

return M