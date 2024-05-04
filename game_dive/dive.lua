function init()
  ProtocolGame.registerExtendedOpcode(166, function(protocol, opcode, buffer) show() end)
  ProtocolGame.registerExtendedOpcode(167, function(protocol, opcode, buffer) hide() end)
  ProtocolGame.registerExtendedOpcode(168, function(protocol, opcode, buffer) show_diveUp() end)
  ProtocolGame.registerExtendedOpcode(169, function(protocol, opcode, buffer) hide_diveUp() end)
  connect(g_game, { onGameEnd = onGameEnd })
  diveDown = g_ui.displayUI('dive')
  diveDown:hide()
  diveUp = g_ui.displayUI('diveUp')
  diveUp:hide()
end

function terminate()
  disconnect(g_game, { onGameEnd = onGameEnd })
  diveDown:destroy()
  diveUp:destroy()
end

function onGameEnd()
  if diveDown:isVisible() then
    diveDown:hide()
    diveUp:hide()
  end
end

function show()
  diveDown:show()
end
function show_diveUp()
  diveUp:show()
end

function hide()
	if diveDown:isVisible() then
	  diveDown:hide()
	end
end
function hide_diveUp()
	if diveUp:isVisible() then
	  diveUp:hide()
	end
end
-- Snowboard FUNCTIONS HOME:
function descer()
end

function subir()
end
-- Snowboard FUNCTIONS END: