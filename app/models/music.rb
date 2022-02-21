class Music < ApplicationRecord
    validates :title, {presence: true}
    validates :user_id, {presence: true}
    validates :release, {presence: true}

    def user
        return User.find_by(id: self.user_id) #このメソッドを使ったら投稿した内容を誰かid使って簡単に紐付けることができる。わからなくなったらコンソールで使ってみる
    end
end
