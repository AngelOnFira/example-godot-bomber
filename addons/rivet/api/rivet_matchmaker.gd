class Lobby:
    ## @tutorial: https://rivet.gg/docs/matchmaker/api/lobbies/find
    static func find(body: Dictionary) -> void:
        return Rivet.POST("matchmaker/lobbies/find", body)

    ## @tutorial: https://rivet.gg/docs/matchmaker/api/lobbies/join
    static func join(body: Dictionary) -> void:
        return Rivet.POST("matchmaker/lobbies/join", body)

    ## @tutorial: https://rivet.gg/docs/matchmaker/api/lobbies/ready
    static func ready(body: Dictionary) -> void:
        return Rivet.POST("matchmaker/lobbies/ready", body)

class Player:
    ## @tutorial: https://rivet.gg/docs/matchmaker/api/players/connected
    static func connected(body: Dictionary) -> void:
        return Rivet.POST("matchmaker/players/connected", body)

    ## @tutorial: https://rivet.gg/docs/matchmaker/api/players/disconnected
    static func disconnected(body: Dictionary) -> void:
        return Rivet.POST("matchmaker/players/disconnected", body)

class Matchmaker:
    static var lobby: Lobby
    static var player: Player