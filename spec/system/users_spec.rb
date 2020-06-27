require 'rails_helper'
RSpec.describe 'ユーザ登録・ログイン・ログアウト機能・募集ページ', type: :system do

  describe 'ユーザ登録のテスト' do
    context 'ユーザのデータがなくログインしていない場合' do
      it 'ユーザ新規登録のテスト' do
        visit new_user_registration_path
        fill_in 'user[name]', with: 'sample'
        fill_in 'user[email]', with: 'sample@example.com'
        fill_in 'user[password]', with: '00000000'
        fill_in 'user[password_confirmation]', with: '00000000'
        click_on 'アカウント登録'
        expect(page).to have_content '募集'
      end
    end
    context 'ユーザのデータがなくログインしていない場合' do
      it 'ユーザ新規登録のテスト' do
        visit new_user_registration_path
        fill_in 'user[name]', with: 'sample'
        fill_in 'user[email]', with: 'sample@example.com'
        fill_in 'user[password]', with: '00000000'
        fill_in 'user[password_confirmation]', with: '00000000'
        click_on 'アカウント登録'
        visit recruitments_path
        click_on 'ログアウト'
        expect(page).to have_content 'ログアウト'
      end
    end
  describe '募集テスト' do
    context 'ユーザのログインしている場合' do
      it 'プロフィールテスト' do
        visit new_user_registration_path
        fill_in 'user[name]', with: 'sample'
        fill_in 'user[email]', with: 'sample@example.com'
        fill_in 'user[password]', with: '00000000'
        fill_in 'user[password_confirmation]', with: '00000000'
        click_on 'アカウント登録'
        visit recruitments_path
        click_on 'プロフィール'
        expect(page).to have_content 'プロフィール'
      end
    end
    context 'ユーザのログインしている場合' do
      it 'ユーザーテスト' do
        visit new_user_registration_path
        fill_in 'user[name]', with: 'sample'
        fill_in 'user[email]', with: 'sample@example.com'
        fill_in 'user[password]', with: '00000000'
        fill_in 'user[password_confirmation]', with: '00000000'
        click_on 'アカウント登録'
        visit recruitments_path
        click_on 'ユーザー一覧'
        expect(page).to have_content 'ユーザー一覧'
      end
    end
    context 'ユーザのログインしている場合' do
      it '募集一覧テスト' do
        visit new_user_registration_path
        fill_in 'user[name]', with: 'sample'
        fill_in 'user[email]', with: 'sample@example.com'
        fill_in 'user[password]', with: '00000000'
        fill_in 'user[password_confirmation]', with: '00000000'
        click_on 'アカウント登録'
        visit recruitments_path
        expect(page).to have_content '募集一覧'
      end
    end
    context 'ユーザのログインしている場合' do
      it '募集検索テスト' do
        visit new_user_registration_path
        fill_in 'user[name]', with: 'sample'
        fill_in 'user[email]', with: 'sample@example.com'
        fill_in 'user[password]', with: '00000000'
        fill_in 'user[password_confirmation]', with: '00000000'
        click_on 'アカウント登録'
        visit recruitments_path
        expect(page).to have_content '検索する▼'
      end
    end
    context 'ユーザのログインしている場合' do
      it '募集作成テスト' do
        visit new_user_registration_path
        fill_in 'user[name]', with: 'sample'
        fill_in 'user[email]', with: 'sample@example.com'
        fill_in 'user[password]', with: '00000000'
        fill_in 'user[password_confirmation]', with: '00000000'
        click_on 'アカウント登録'
        visit recruitments_path
        expect(page).to have_content '募集する▼'
      end
    end
    context 'ユーザのログインしている場合' do
      it 'プロフィール編集テスト' do
        visit new_user_registration_path
        fill_in 'user[name]', with: 'sample'
        fill_in 'user[email]', with: 'sample@example.com'
        fill_in 'user[password]', with: '00000000'
        fill_in 'user[password_confirmation]', with: '00000000'
        click_on 'アカウント登録'
        visit recruitments_path
        click_on 'プロフィール'
        expect(page).to have_content 'プロフィールを編集'
      end
    end
    context 'ユーザのログインしている場合' do
      it 'お気に入り一覧テスト' do
        visit new_user_registration_path
        fill_in 'user[name]', with: 'sample'
        fill_in 'user[email]', with: 'sample@example.com'
        fill_in 'user[password]', with: '00000000'
        fill_in 'user[password_confirmation]', with: '00000000'
        click_on 'アカウント登録'
        visit recruitments_path
        click_on 'プロフィール'
        click_on 'お気に入り一覧'
        expect(page).to have_content 'お気に入り一覧'
      end
    end
    context 'ユーザのログインしている場合' do
      it 'フォロー▼一覧テスト' do
        visit new_user_registration_path
        fill_in 'user[name]', with: 'sample'
        fill_in 'user[email]', with: 'sample@example.com'
        fill_in 'user[password]', with: '00000000'
        fill_in 'user[password_confirmation]', with: '00000000'
        click_on 'アカウント登録'
        visit recruitments_path
        click_on 'プロフィール'
        expect(page).to have_content 'フォロー▼'
      end
    end
    context 'ユーザのログインしている場合' do
      it 'フォロワー▼一覧テスト' do
        visit new_user_registration_path
        fill_in 'user[name]', with: 'sample'
        fill_in 'user[email]', with: 'sample@example.com'
        fill_in 'user[password]', with: '00000000'
        fill_in 'user[password_confirmation]', with: '00000000'
        click_on 'アカウント登録'
        visit recruitments_path
        click_on 'プロフィール'
        expect(page).to have_content 'フォロワー▼'
      end
    end
    context 'ユーザのログインしている場合' do
      it '過去の投稿一覧テスト' do
        visit new_user_registration_path
        fill_in 'user[name]', with: 'sample'
        fill_in 'user[email]', with: 'sample@example.com'
        fill_in 'user[password]', with: '00000000'
        fill_in 'user[password_confirmation]', with: '00000000'
        click_on 'アカウント登録'
        visit recruitments_path
        click_on 'プロフィール'
        expect(page).to have_content '過去の投稿'
      end
    end
  end

    # context '投稿ページにいけないこと' do
    #   it 'ログインしていない時はログイン画面に飛ぶテスト' do
    #     visit recruitments_path
    #     expect(page).to have_content 'ログイン'
    #   end
    # end
  end
    context '投稿ページにいけないこと' do
      it 'ログインしていない時はログイン画面に飛ぶテスト' do
        visit recruitments_path
        expect(page).to have_content 'ログイン'
      end
    end
end