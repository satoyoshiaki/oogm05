class Recruitment < ApplicationRecord
    belongs_to :user
    validates :play_now, presence: true
    validates :game_title, presence: true
    validates :comment, presence: true
    validates :machine, presence: true
    validates :image, presence: true
    validates :on_off, presence: true
    validates :purpouse, presence: true
    validates :comment,    length: { in: 1..250 }
    validates :game_title,    length: { in: 1..30 }

    enum play_now: { 今遊ぶ: 0, 定期的に: 1, あとで: 2, いつか: 3 }
    enum machine: { PC: 0, スマホ: 1, swhich: 2, PS4: 3, PSVITA: 4, PS5: 5, カードゲーム: 6, xboxone: 7, その他: 8 }
    enum on_off: { オンライン: 0, オフライン: 1 }
    enum purpouse: { フレンド: 0, 協力プレイ: 1, 対戦: 2, 練習: 3, 経験値稼ぎ: 4, イベント周回: 5, イベント参加: 6, 大会: 7, 楽しくお話: 8, その他の目的: 9 }
end
