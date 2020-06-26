require 'rails_helper'
RSpec.describe Recruitment, type: :model do
  it 'game_titleが空ならバリデーションが通らない' do
    recruitment = Recruitment.new(play_now: '今遊ぶ', game_title: '', comment: 'aaaa', machine: 'PC', on_off: 'オンライン', purpouse: 'フレンド')
    expect(recruitment).not_to be_valid
  end

  it 'game_titleが31文字以上だとバリデーションが通らない' do
    recruitment = Recruitment.new(play_now: '今遊ぶ', game_title: 'a'*40, comment: 'aaaa', machine: 'PC', on_off: 'オンライン', purpouse: 'フレンド')
    expect(recruitment).not_to be_valid
  end

  it 'commentが空ならバリデーションが通らない' do
    recruitment = Recruitment.new(play_now: '今遊ぶ', game_title: '失敗テスト', comment: '', machine: 'PC', on_off: 'オンライン', purpouse: 'フレンド')
    expect(recruitment).not_to be_valid
  end

  it 'commentが251文字以上だとバリデーションが通らない' do
    recruitment = Recruitment.new(play_now: '今遊ぶ', game_title: '失敗テスト', comment: 'a'*300, machine: 'PC', on_off: 'オンライン', purpouse: 'フレンド')
    expect(recruitment).not_to be_valid
  end

  it 'play_nowが空ならバリデーションが通らない' do
    recruitment = Recruitment.new(play_now: '', game_title: '失敗テスト', comment: 'aaaa', machine: 'PC', on_off: 'オンライン', purpouse: 'フレンド')
    expect(recruitment).not_to be_valid
  end

  it 'machineが空ならバリデーションが通らない' do
    recruitment = Recruitment.new(play_now: '今遊ぶ', game_title: 'aaa', comment: 'aaaa', machine: '', on_off: 'オンライン', purpouse: 'フレンド')
    expect(recruitment).not_to be_valid
  end

  it 'on_offが空ならバリデーションが通らない' do
    recruitment = Recruitment.new(play_now: '今遊ぶ', game_title: 'aaaaa', comment: 'aaaa', machine: 'PC', on_off: '', purpouse: 'フレンド')
    expect(recruitment).not_to be_valid
  end

  it 'purpouseが空ならバリデーションが通らない' do
    recruitment = Recruitment.new(play_now: '今遊ぶ', game_title: 'aaaaa', comment: 'aaaa', machine: 'PC', on_off: 'オンライン', purpouse: '')
    expect(recruitment).not_to be_valid
  end
end