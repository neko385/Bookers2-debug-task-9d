class Book < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :book_comments, dependent: :destroy
  validates :title,presence:true
  validates :body,presence:true,length:{maximum:200}

  #favorited_by？メソッドで引数で渡されたユーザidがFavoritesテーブル内に存在（exists?）するかどうかを調べる。
  #存在していればtrue、存在していなければfalseを返すようにする
  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
end
