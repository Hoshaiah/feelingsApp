class Entry < ApplicationRecord
    validates :date, presence: true
    validates :thoughts, presence: true
    validates :emotion, presence: true
    validates :rating, numericality: { only_integer: true }
    validates :rating, numericality: { greater_than: 0 }
    validates :rating, numericality: {less_than: 11}
    # validates_inclusion_of :emotions, in: %w(angry annoyed cheeky confused curious ded ecstatic happy horrified kilig  neutral sad shocked tampo weird)

end
