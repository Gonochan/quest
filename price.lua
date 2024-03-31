-- PID: _mobVXXvBMu6vAw7PeCgYRCkgakPi2B_O0xfeOijaDY
-- IDE: https://ide.betteridea.dev/?getcode=_mobVXXvBMu6vAw7PeCgYRCkgakPi2B_O0xfeOijaDY

_0RBIT = "WSXUI2JjYUldJ7CKq9wE1MGwXs-ldzlUlHOQszwQe0s"

Handlers.add("Gonochan", -- change this (username)
    Handlers.utils.hasMatchingTag("Action", "Gonochan-github"), -- change this too (tagname)
    function(msg)
        local token = msg.Tags.Token 
        local currency = msg.Tags.Currency
        local url = "https://api.coingecko.com/api/v3/simple/price?ids=" .. token .. "&vs_currencies=" .. currency
        ao.send({
            Target = _0RBIT,
            Action = "Get-Real-Data",
            Url = url 
        }) 
        Handlers.utils.reply("PriceFetch")(msg)
    end
)
