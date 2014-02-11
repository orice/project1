json.array!(@hand_analytics) do |hand_analytic|
  json.extract! hand_analytic, :flop, :river, :turn, :number_of_players, :my_hand
  json.url hand_analytic_url(hand_analytic, format: :json)
end