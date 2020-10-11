require 'rails_helper'

RSpec.describe Review, type: :model do
  before do
    @review = FactoryBot.build(:review)
  end

  describe 'レビュー記事投稿' do
    context '新規投稿がうまくいくとき' do
      it "正しく情報を入力すれば投稿できる" do
        expect(@review).to be_valid
      end
    end

    context '新規登録がうまくいかないとき' do
      it "imageが空だと登録できない" do
        @review.image = nil
        @review.valid?
        expect(@review.errors.full_messages).to include("Image can't be blank")
      end
      it "item_nameが空だと登録できない" do
        @review.item_name = ''
        @review.valid?
        expect(@review.errors.full_messages).to include("Item name can't be blank")
      end
      it "item_brandが空だと登録できない" do
        @review.item_brand = ''
        @review.valid?
        expect(@review.errors.full_messages).to include("Item brand can't be blank")
      end
      it "item_makerが空だと登録できない" do
        @review.item_maker = ''
        @review.valid?
        expect(@review.errors.full_messages).to include("Item maker can't be blank")
      end
      it "rateが空だと登録できない" do
        @review.rate = ''
        @review.valid?
        expect(@review.errors.full_messages).to include("Rate can't be blank")
      end
      it "contentが空だと登録できない" do
        @review.content = ''
        @review.valid?
        expect(@review.errors.full_messages).to include("Content can't be blank")
      end
    end
  end
end
