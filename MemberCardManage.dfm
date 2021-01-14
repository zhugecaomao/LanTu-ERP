inherited MemberCardManageForm: TMemberCardManageForm
  Left = 238
  Top = 237
  Width = 357
  Height = 170
  Caption = #21457#21345
  PixelsPerInch = 96
  TextHeight = 12
  inherited btnContent: TBitBtn
    OnClick = btnContentClick
  end
  inherited btnExecute1: TBitBtn
    Left = 255
    Top = 32
    OnClick = BitBtn1Click
  end
  inherited btnExecute2: TBitBtn
    Left = 255
    Top = 64
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 27
    Width = 233
    Height = 105
    TabOrder = 3
    object Label2: TLabel
      Left = 16
      Top = 49
      Width = 36
      Height = 12
      Caption = #25276'  '#37329
    end
    object Label3: TLabel
      Left = 16
      Top = 79
      Width = 36
      Height = 12
      Caption = #21475'  '#20196
    end
    object Label1: TLabel
      Left = 16
      Top = 23
      Width = 36
      Height = 12
      Caption = #21345'  '#21495
    end
    object Edit1: TEdit
      Left = 56
      Top = 19
      Width = 145
      Height = 20
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 0
      OnChange = Edit1Change
      OnExit = Edit1Exit
    end
    object Edit2: TEdit
      Left = 56
      Top = 45
      Width = 145
      Height = 20
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object Edit3: TEdit
      Left = 56
      Top = 71
      Width = 145
      Height = 20
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      PasswordChar = '*'
      TabOrder = 2
    end
  end
end
