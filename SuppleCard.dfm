inherited SuppleCardForm: TSuppleCardForm
  Left = 201
  Top = 310
  Caption = #20250#21592#34917#21345
  ClientHeight = 222
  ClientWidth = 338
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
    Top = 32
    Width = 233
    Height = 105
    TabOrder = 3
    object Label2: TLabel
      Left = 16
      Top = 24
      Width = 48
      Height = 12
      Caption = #20250#21592#21517#31216
    end
    object Label1: TLabel
      Left = 16
      Top = 49
      Width = 48
      Height = 12
      Caption = #20250#21592#32534#21495
    end
    object Label3: TLabel
      Left = 16
      Top = 74
      Width = 48
      Height = 12
      Caption = #21475'    '#20196
    end
    object Edit2: TEdit
      Left = 72
      Top = 45
      Width = 145
      Height = 20
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 0
      OnChange = Edit2Change
      OnExit = Edit2Exit
    end
    object Edit1: TEdit
      Left = 72
      Top = 20
      Width = 145
      Height = 20
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 1
      OnChange = Edit1Change
      OnExit = Edit1Exit
    end
    object Edit3: TEdit
      Left = 72
      Top = 70
      Width = 145
      Height = 20
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      PasswordChar = '*'
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 140
    Width = 233
    Height = 73
    TabOrder = 4
    object Label6: TLabel
      Left = 16
      Top = 21
      Width = 48
      Height = 12
      Caption = #21345'    '#21495
    end
    object Label5: TLabel
      Left = 16
      Top = 47
      Width = 48
      Height = 12
      Caption = #34917' '#21345' '#36153
    end
    object Edit4: TEdit
      Left = 72
      Top = 17
      Width = 145
      Height = 20
      TabOrder = 0
      OnChange = Edit4Change
    end
    object Edit5: TEdit
      Left = 72
      Top = 43
      Width = 145
      Height = 20
      TabOrder = 1
      OnKeyPress = Edit5KeyPress
    end
  end
end
