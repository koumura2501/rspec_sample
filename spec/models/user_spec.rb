require 'rails_helper'

RSpec.describe User, type: :model do
  describe "名前の表示" do
    let(:params) {{name: "satou", age: 1, gender: 0}}
    let(:params2) {{name: "satou", age: 15, gender: 1}}
    let(:params3) {{name: "satou", age: 30, gender: 0}}

    it "年齢1 : ユーザの名前が取得できること" do
      user = User.new(params)
      expect(user.disp_name).to eq "satouくんは1歳です"
    end

    it "年齢15 : ユーザの名前が取得できること" do
      user = User.new(params2)
      expect(user.disp_name).to eq "satouさんは15歳です"
    end

    it "年齢20 : ユーザの名前が取得できること" do
      user = User.new(params3)
      expect(user.disp_name).to eq "satouくんは30歳です"
    end
  end
end
