FactoryBot.define do
    factory :recruitment do
        play_now { '今遊ぶ' }
        game_title { 'aaaaaa' }
        comment { 'aaaaaaaa' }
        machine { 'PC' }
        on_off { 'オンライン' }
        purpouse { 'フレンド' }
        user
    end
  end