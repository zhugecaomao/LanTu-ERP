inherited PayOffCardForm: TPayOffCardForm
  Left = 262
  Top = 177
  Caption = #20250#21592#36864#21345
  ClientHeight = 131
  ClientWidth = 339
  PixelsPerInch = 96
  TextHeight = 12
  inherited btnContent: TBitBtn
    OnClick = btnContentClick
  end
  inherited btnExecute1: TBitBtn
    Left = 253
    OnClick = btnExecute1Click
  end
  inherited btnExecute2: TBitBtn
    Left = 253
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 30
    Width = 233
    Height = 75
    TabOrder = 3
    object Label1: TLabel
      Left = 12
      Top = 20
      Width = 48
      Height = 12
      Caption = #21345'    '#21495
    end
    object Label2: TLabel
      Left = 12
      Top = 47
      Width = 48
      Height = 12
      Caption = #21475'    '#20196
    end
    object Edit1: TEdit
      Left = 68
      Top = 16
      Width = 145
      Height = 20
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 0
      OnChange = Edit1Change
    end
    object Edit2: TEdit
      Left = 68
      Top = 43
      Width = 145
      Height = 20
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      PasswordChar = '*'
      TabOrder = 1
    end
  end
end
