inherited BaseExDragForm: TBaseExDragForm
  Caption = #39640#32423#22522#31867#25302#21160#31383#20307
  ClientHeight = 266
  Menu = MainMenu1
  PixelsPerInch = 96
  TextHeight = 12
  object MainMenu1: TMainMenu
    Left = 244
    Top = 24
    object N1: TMenuItem
      Caption = #21151#33021
      object Design: TMenuItem
        Caption = #35774#35745
        OnClick = DesignClick
      end
      object Runtime: TMenuItem
        Caption = #36816#34892
        Enabled = False
        OnClick = RuntimeClick
      end
    end
  end
end
