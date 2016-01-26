class Pedido < ActiveRecord::Base
	belongs_to :cliente	
	validates :estado_pedido, presence: true
	validates_date :fecha_pedido,  date: { after: Proc.new { Time.now + 3.day}, allow_blank: false}

end
