module ApplicationHelper
	def pegar_sexo(sex)
		if sex == "M"
			"Masculino"
		elsif sex == "F"
			"Feminino"
		end
	end
end
