inherited EmployeetypeEditForm: TEmployeetypeEditForm
  Left = 503
  Top = 192
  Caption = #21592#24037#31867#21035'--'#32534#36753
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel [4]
    Left = 24
    Top = 32
    Width = 48
    Height = 12
    Caption = #31867#21035#21517#31216
    FocusControl = DBEditEh1
  end
  object Label2: TLabel [5]
    Left = 24
    Top = 64
    Width = 48
    Height = 12
    Caption = #22791'    '#27880
    FocusControl = DBEditEh2
  end
  object DBEditEh1: TDBEditEh
    Left = 80
    Top = 28
    Width = 145
    Height = 20
    DataField = #31867#21035#21517#31216
    DataSource = EmployeetypeForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 3
    Visible = True
  end
  object DBEditEh2: TDBEditEh
    Left = 80
    Top = 60
    Width = 145
    Height = 20
    DataField = #22791#27880
    DataSource = EmployeetypeForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 4
    Visible = True
  end
end
