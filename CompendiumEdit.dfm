inherited CompendiumEditForm: TCompendiumEditForm
  Left = 368
  Top = 266
  Caption = #35828#26126#25688#35201'--'#32534#36753
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel [4]
    Left = 16
    Top = 48
    Width = 48
    Height = 12
    Caption = #35828#26126#25688#35201
    FocusControl = DBEditEh1
  end
  inherited btnIns: TBitBtn
    TabOrder = 1
  end
  inherited btnOK: TBitBtn
    TabOrder = 2
  end
  inherited btnNO: TBitBtn
    TabOrder = 3
  end
  object DBEditEh1: TDBEditEh
    Left = 72
    Top = 44
    Width = 145
    Height = 20
    DataField = #35828#26126#25688#35201
    DataSource = CompendiumForm.dsBaseInfo
    EditButtons = <>
    TabOrder = 0
    Visible = True
  end
end
