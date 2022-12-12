class Filme < ApplicationRecord
    validates :nome,:ano,:descricao, presence: true
    has_one_attached :cartaz
end
