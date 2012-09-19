class Calc
	Shoes.app :height => 480, :width => 450, :resizable => false do
		background lightgrey
		stack :width => "100%", :margin => 20 do
			image "Pcalc_image.png"
		end

		stack  :margin => 10, :width => 140 do
			para "Nota Bimestral", :fill => white
			para "v1 "
			v1 = edit_line :width => 80
			para "pd "
			pd = edit_line :width => 80
			para "v2 "
			v2 = edit_line :width => 80
			para "v+ "
			vm = edit_line :width => 80
			button "calcular" do
				if ((v1.text.to_f + pd.text.to_f + v2.text.to_f + vm.text.to_f) / 2) < 60
					alert "Sua nota bimestral é #{((v1.text.to_f + pd.text.to_f + v2.text.to_f + vm.text.to_f) / 2)}, e infelizmente você não passou"
				else
					alert "Sua nota bimestral é #{((v1.text.to_f + pd.text.to_f + v2.text.to_f + vm.text.to_f) / 2)}, parabéns você passou!"
				end
			end
		end
		stack  :margin => 10, :width => 150 do
			para "Nota Anual", :fill => white, :align => "center"
			para "Nota 1º Bimestre"
			b1 = edit_line :width => 100
			para "Nota 2º Bimestre"
			b2 = edit_line :width => 100
			para "Nota 3º Bimestre"
			b3 = edit_line :width => 100
			para "Nota 4º Bimestre"
			b4 = edit_line :width => 100
			button "calcular" do
				if ((b1.text.to_f * 2 + b2.text.to_f * 3 + b3.text.to_f * 2 + b4.text.to_f * 3) / 10) < 60
					alert "Sua nota anual é #{(b1.text.to_f * 2 + b2.text.to_f * 3 + b3.text.to_f * 2 + b4.text.to_f * 3) / 10}, e infelizmente você não passou"
				else
					alert "Sua nota anual é #{(b1.text.to_f * 2 + b2.text.to_f * 3 + b3.text.to_f * 2 + b4.text.to_f * 3) / 10}, parabéns você passou!"
				end
			end
		end
		
		stack  :margin => 10, :width => 150 do
			para "Nota Semestral", :fill => white
			para "Nota 1º Bimestre"
			note1 = edit_line :width => 100
			para "Nota 2º Bimestre"
			note2 = edit_line :width => 100
			button "calcular" do
				if ((note1.text.to_f * 2 + note2.text.to_f * 3) / 5) < 60
					alert("Sua nota semestral é #{((note1.text.to_f * 2 + note2.text.to_f * 3) / 5)}, e infelizmente você não passou")
				else
					alert("Sua nota semestral é #{((note1.text.to_f * 2 + note2.text.to_f * 3) / 5)}, parabéns você passou!")
				end
			end
		end
		
	end
end