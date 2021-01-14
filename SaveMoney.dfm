inherited SaveMoneyForm: TSaveMoneyForm
  Left = 225
  Top = 190
  Caption = #20250#21592#23384#27454
  PixelsPerInch = 96
  TextHeight = 12
  object Label3: TLabel [0]
    Left = 21
    Top = 112
    Width = 48
    Height = 12
    Caption = #23384#27454#37329#39069
  end
  inherited GroupBox1: TGroupBox
    object Label2: TLabel [1]
      Left = 16
      Top = 43
      Width = 48
      Height = 12
      Caption = #20250#21592#32534#21495
    end
    inherited Edit1: TEdit
      OnExit = Edit1Exit
    end
    object Edit2: TEdit
      Left = 64
      Top = 39
      Width = 145
      Height = 20
      TabOrder = 1
    end
  end
  object Edit3: TEdit [5]
    Left = 72
    Top = 108
    Width = 145
    Height = 20
    TabOrder = 4
    OnEnter = Edit3Enter
    OnKeyPress = Edit3KeyPress
  end
  inherited BitBtn1: TBitBtn
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  inherited ADOQuery1: TADOQuery
    Top = 72
  end
  inherited ADOQuery2: TADOQuery
    CursorType = ctStatic
  end
end
