local modname = core.get_current_modname() or "??"

-- This is an example function to ensure it's working properly, should be removed before merge
core.register_on_shutdown(function()
	print("[PREVIEW] shutdown client")
end)

-- This is an example function to ensure it's working properly, should be removed before merge
core.register_on_receiving_chat_messages(function(message)
	print("[PREVIEW] Received message " .. message)
	return false
end)

-- This is an example function to ensure it's working properly, should be removed before merge
core.register_on_sending_chat_messages(function(message)
	print("[PREVIEW] Sending message " .. message)
	return false
end)

-- This is an example function to ensure it's working properly, should be removed before merge
core.register_on_hp_modification(function(hp)
	print("[PREVIEW] HP modified " .. hp)
end)

-- This is an example function to ensure it's working properly, should be removed before merge
core.register_on_damage_taken(function(hp)
	print("[PREVIEW] Damage taken " .. hp)
end)

-- This is an example function to ensure it's working properly, should be removed before merge
core.register_globalstep(function(dtime)
	-- print("[PREVIEW] globalstep " .. dtime)
end)

-- This is an example function to ensure it's working properly, should be removed before merge
core.register_chatcommand("dump", {
	func = function(param)
		return true, dump(_G)
	end,
})

core.register_chatcommand("test_node", {
	func = function(param)
		core.display_chat_message(dump(core.get_node({x=0, y=0, z=0})))
		core.display_chat_message(dump(core.get_node_or_nil({x=0, y=0, z=0})))
	end,
})


core.after(2, function()
	print("[PREVIEW] loaded " .. modname .. " mod")
end)

core.register_on_dignode(function(pos, node)
	print("The local player dug a node!")
	print("pos:" .. dump(pos))
	print("node:" .. dump(node))
	return false
end)

core.register_on_punchnode(function(pos, node)
	print("The local player punched a node!")
	print("pos:" .. dump(pos))
	print("node:" .. dump(node))
	return false
end)