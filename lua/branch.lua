
local _M = {}

function _M.branch()
    local redis = require "resty.redis"
    local cjson = require "cjson"
    local red = redis:new()
    red:set_timeout(1000)
    local ok, err = red:connect("172.17.0.3", 6379)

    -- if redis connection is not available, return 204
    if not ok then
        ngx.status = 204
        return ngx.exit(204)
    else
        ngx.status = 200
        return ngx.exit(200)
    end
end

function _M.greet(name)
    ngx.say("Greetings from ", name)
end
return _M
