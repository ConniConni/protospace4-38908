class Prototype < ApplicationRecord
  belongs_to :users
  has_many :comments
  has_one_attached :image

  #private

  #def prototypes_params
  #  params.require(:prototype).permit(:content, :image).merge(user_id: current_user.id)
  #end
end
