#
#  AppDelegate.rb
#  PCalc
#
#  Created by Pedro Henrique on 9/6/12.
#  Copyright 2012 Pedro Henrique. All rights reserved.
#

class AppDelegate
    attr_accessor :window
    attr_accessor :inputtext, :inputtext2, :noteb1, :noteb2, :noteb3, :noteb4, :notev1, :notev2, :notepd, :notevm
    
    def bimestral_calc(sender)
        v1 = NSString.new()
        v1 = " "
        v1 = notev1.stringValue
        v2 = NSString.new()
        v2 = " "
        v2 = notev2.stringValue
        vm = NSString.new()
        vm = " "
        vm = notevm.stringValue
        pd = NSString.new()
        pd = " "
        pd = notepd.stringValue
        v1_final = v1.to_f + pd.to_f
        v2_final = v2.to_f + vm.to_f
        total = (v1_final.to_f + v2_final.to_f) / 2
        alert = NSAlert.new
        if total < 60
            alert.setMessageText("Sua nota semestral é #{total}, e infelizmente você não passou")
        else
            alert.setMessageText("Sua nota semestral é #{total}, parabéns você passou!")
        end
        alert.runModal()
    end

    def button_clicked(sender)
        note1 = NSString.new()
        note1 = " "
        note1 = inputtext.stringValue
        note2 = NSString.new()
        note2 = " "
        note2 = inputtext2.stringValue
        var1 = note1.to_f * 2 + note2.to_f * 3
        var2 = var1.to_f / 5
        alert = NSAlert.new
        if var2 < 60
            alert.setMessageText("Sua nota semestral é #{var2}, e infelizmente você não passou")
        else
            alert.setMessageText("Sua nota semestral é #{var2}, parabéns você passou!")
        end
        alert.runModal()
    end
    
    def anual_calc(sender)
        b1 = NSString.new()
        b1 = " "
        b1 = noteb1.stringValue
        b2 = NSString.new()
        b2 = " "
        b2 = noteb2.stringValue
        b3 = NSString.new()
        b3 = " "
        b3 = noteb3.stringValue
        b4 = NSString.new()
        b4 = " "
        b4 = noteb4.stringValue
        var1 = b1.to_f * 2 + b2.to_f * 3 + b3.to_f * 2 + b4.to_f * 3
        var2 = var1.to_f / 10
        alert = NSAlert.new
        if var2 < 60
            alert.setMessageText("Sua nota anual é #{var2}, e infelizmente você não passou")
        else
            alert.setMessageText("Sua nota anual é #{var2}, parabéns você passou!")
        end
        alert.runModal()
    end
end

