class Question < ApplicationRecord
  belongs_to :User,optional:true
  belongs_to :Univercity,optional:true
  #has_many :Labelquestions
  #has_many :Labels, through: :Labelquestions
  has_and_belongs_to_many :labels
  has_many :Answers, dependent: :destroy
  has_many :VoteQs, dependent: :destroy
  has_many :RemarkQs, dependent: :destroy
  has_many :ComplaintQs, dependent: :destroy

  #validate :tags_between_one_and_five

  	def self.search(query)

  		Question.where("titulo LIKE :q OR descripcion LIKE :q", { q: "%#{query}%" })

  	end
  	#recibe el id de univerisdad del usuario log


  	private

  	def tags_between_one_and_five
  		if labels.size > 5 || labels.size < 1
  			errors.add(:labels, "debe tener al menos una etiqueta y a lo sumo cinco etiquetas")
  		end
  	end

end
