inherited ShopInfoEditForm: TShopInfoEditForm
  Left = 276
  Top = 388
  Caption = #22522#30784#36164#26009'-'#24215#38754#32534#36753
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel [4]
    Left = 8
    Top = 36
    Width = 48
    Height = 12
    Caption = #24215#38754#32534#21495
    FocusControl = DBEditEh1
  end
  object Label2: TLabel [5]
    Left = 8
    Top = 64
    Width = 48
    Height = 12
    Caption = #24215#38754#21517#31216
    FocusControl = DBEditEh2
  end
  object DBEditEh1: TDBEditEh
    Left = 64
    Top = 32
    Width = 145
    Height = 20
    DataField = #24215#38754#32534#21495
    DataSource = ShopInfoForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 3
    Visible = True
  end
  object DBEditEh2: TDBEditEh
    Left = 64
    Top = 60
    Width = 145
    Height = 20
    DataField = #24215#38754#21517#31216
    DataSource = ShopInfoForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 4
    Visible = True
  end
end
