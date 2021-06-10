require "json"
require "uri"
require "net/http"

class Deck_API
  def add_to_hand(cards, game_id, player)
    Net::HTTP.get(URI.parse("https://deckofcardsapi.com/api/deck/" + game_id + "/pile/" + player + "/add/?cards=" + cards.join(',')))
  end

  def get_player_hand_uri(count, game_id)
    DECK_URI % [game_id, count]
  end

  def get_hand(game_id, player_name)
    player_hand_response = Net::HTTP.post_form(URI.parse("https://deckofcardsapi.com/api/deck/" + game_id + "/pile/" + player_name + "/list/"), {})
    JSON.parse(player_hand_response.body)
  end
end