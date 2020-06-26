require 'rails_helper'
RSpec.describe 'ユーザ登録・ログイン・ログアウト機能', type: :system do
  before do
    @user = FactoryBot.create(:user)
  end

  describe 'ユーザ登録のテスト' do
    context 'ユーザのデータがなくログインしていない場合' do
      it 'ユーザ新規登録のテスト' do
        visit new_user_registration_path
        fill_in 'user[name]', with: 'aaaaaa'
        fill_in 'user[email]', with: 'aaa@g.c'
        fill_in 'user[password]', with: 'aaaaaaaaaaa'
        fill_in 'user[password_confirmation]', with: 'aaaaaaaaaaa'
        click_on 'アカウント登録'
        expect(page).to have_content '募集'
      end
    end
  end

  describe 'セッション機能のテスト' do
    context 'ログインができること' do
      it '募集ページに飛べること' do
        visit new_user_session_path
        fill_in 'user[email]', with: 'sample@example.com'
        fill_in 'user[password]', with: '00000000'
        click_on 'ログインする'
        expect(page).to have_content '募集'
      end
    end

    context '投稿ページにいけないこと' do
      it 'ログインしていない時はログイン画面に飛ぶテスト' do
        visit recruitments_path
        expect(page).to have_content 'ログイン'
      end
    end

    context 'ログアウトができること' do
      it 'ログアウトしてトップページへ戻る' do
        visit new_user_session_path
        fill_in 'user[email]', with: 'sample@example.com'
        fill_in 'user[password]', with: '00000000'
        click_on 'ログイン'
        expect(page).to have_content '募集'
      end
    end
  end
end