
extends Node
## Rivet [/br]
## Mainpoint of the Rivet plugin.
## It includes an easy access to APIs, helpers and tools. [/br]
## @tutorial: https://rivet.gg/learn/godot
## @experimental

const _api = preload("api/rivet_api.gd")

const _Matchmaker = preload("api/rivet_matchmaker.gd")

var cloud_token: String
var namespace_token: String 
var game_id: String
var api_endpoint: String

var matchmaker: _Matchmaker.Matchmaker = _Matchmaker.Matchmaker.new()

# This variable is only accessible from editor's scripts, please do not use it in your game.
var cli

## @experimental
func POST(path: String, body: Dictionary) -> _api.RivetRequest:
	return _api.POST(self, path, body)

## @experimental
func GET(path: String, body: Dictionary = {}) -> _api.RivetRequest:
	return _api.GET(self, path, body)

## @experimental
func lobby_ready(body: Dictionary) -> _api.RivetRequest:
	return _api.POST(self, "matchmaker/lobbies/ready", body)

## @experimental
func find_lobby(body: Dictionary) -> _api.RivetRequest:
	return _api.POST(self, "matchmaker/lobbies/find", body)

## @experimental
func player_connected(body: Dictionary) -> _api.RivetRequest:
	return _api.POST(self, "matchmaker/players/connected", body)

## @experimental
func player_disconnected(body: Dictionary) -> _api.RivetRequest:
	return _api.POST(self, "matchmaker/players/disconnected", body)

