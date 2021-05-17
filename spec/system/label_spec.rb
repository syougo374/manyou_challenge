require 'rails_helper'
RSpec.describe 'タスク管理機能', type: :system do
  let!(:user) {FactoryBot.create(:user)}
  # let!(:label) {FactoryBot.create(:label)}
  # let!(:labe2) {FactoryBot.create(:label2)}
  before do
    task1 = FactoryBot.create(:task,user: user)
    task2 = FactoryBot.create(:task2,user: user)
    task3 = FactoryBot.create(:task3,user: user)
    # FactoryBot.create(:label)
    label = FactoryBot.create(:label)
    label2 = FactoryBot.create(:label2)
    label3 = FactoryBot.create(:label3)
    FactoryBot.create(:task_label, task_id: task1.id, label_id: label.id)
    FactoryBot.create(:task_label, task_id: task2.id, label_id: label2.id)
    FactoryBot.create(:task_label, task_id: task3.id, label_id: label3.id)

    visit new_session_path
    fill_in 'session[email]',with: 'syougo@docomo.ne.jp'
    fill_in 'session[password]',with: 'password'
    click_button 'Log in'
    click_button 'タスクを追加する'
    fill_in 'task[daytime]',with: '002020-10-07'
    fill_in 'task[title]', with: 'test_task55'
    fill_in 'task[content]', with: 'content_test55'
    find("#task_status").find("option[value='着手']").select_option
    find("#task_priority").find("option[value='高']").select_option
    # binding.irb
    # check 'value =1'
    click_button '投稿する'
    
    # "task[label_ids][]"
  end
describe 'ラベル検索がされた場合' do
context 'label検索をかけた場合' do
  it '指定したlabelが表示される事' do
    select '怒'
    click_button '検索'
    expect(page).to have_content '怒'
    # binding.irb
    expect(page).to have_content 'タスク2'
    expect(page).not_to have_content 'test_task55	'
  end
end
context '新規作成でラベル機能がある' do
  it '指定したラベル要素が表示される' do

    expect(page).to have_content '怒'
    expect(page).to have_content 'タスク2'
    expect(page).to have_content 'タスク'

end
end
end
end