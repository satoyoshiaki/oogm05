require 'rails_helper'
RSpec.describe User, type: :model do
  it '名前が空ならバリデーションが通らない' do
    user = User.new(name: "", email: "test@g.c", password: "testtest", password_confirmation: "testtest")
    expect(user).not_to be_valid
  end

  it 'emailが空ならバリデーションが通らない' do
    user = User.new(name: "テスト", email: "", password: "testtest", password_confirmation: "testtest")
    expect(user).not_to be_valid
  end

  it 'passwordが空ならバリデーションが通らない' do
    user = User.new(name: "テスト", email: "test@g.c", password: "", password_confirmation: "testtest")
    expect(user).not_to be_valid
  end

  it 'password_confirmationが空ならバリデーションが通らない' do
    user = User.new(name: "テスト", email: "test@g.c", password: "testtest", password_confirmation: "")
    expect(user).not_to be_valid
  end

  it 'パスワード(確認)とパスワードの入力が一致しないとバリデーションが通らない' do
    user = User.new(name: "テスト", email: "test@g.c", password: "testtest", password_confirmation: "tasktask")
    expect(user).not_to be_valid
  end

  it 'パスワードは6文字以上で入力しないとバリデーションが通らない' do
    user = User.new(name: "テスト", email: "test@g.c", password: "test", password_confirmation: "tese")
    expect(user).not_to be_valid
  end


  it '各条件が記入されていればバリデーションが通る' do
    user = User.new(name: "テスト", email: "test@g.c", password: "testtest", password_confirmation: "testtest")
    expect(user).to be_valid
  end

end