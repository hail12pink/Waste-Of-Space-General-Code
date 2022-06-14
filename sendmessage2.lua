local sm2 = {}
sm2.internal = {}
sm2.internal.subscriptions = {}

sm2.subscribeMessage = function(eventName:string, funcToCall:any)
  if not eventName then error("no provided event to subscribe!", 2) end
  if not funcToCall then error("no provided function to call!", 2) end
  
  sm2.internal.subscriptions[#sm2.internal.subscriptions+1] = {"name"=eventName,"func"=funcToCall}
  
  return true
end

sm2.sendMessage = function(antenna:Antenna, id:number, contents:any)
  if not antenna then error("no provided antenna!", 2) end
  if not id then error("no provided id to send to!", 2) end
  if not contents then error("no provided contents to send!", 2) end
  
  -- send message code here
  
  return true
end

sm2.listen = function(portID:number,antennaID:number?)
  coroutine.resume(coroutine.create(function()
        -- listener code here
  end))
end
