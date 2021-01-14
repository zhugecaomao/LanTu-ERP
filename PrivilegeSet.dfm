inherited PrivilegeSetForm: TPrivilegeSetForm
  Caption = #20250#21592#20248#24800#35774#32622
  ClientHeight = 304
  ClientWidth = 414
  PixelsPerInch = 96
  TextHeight = 12
  object GroupBox1: TGroupBox
    Left = 5
    Top = 4
    Width = 401
    Height = 257
    Caption = #20248#24800#26041#24335
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 234
      Height = 12
      Caption = #23384#27454#26102#20248#24800#65306#23454#38469#23384#27454#39069'='#20250#21592#25152#20184#29616#37329#25968#215
      FocusControl = DBEditEh1
    end
    object Label2: TLabel
      Left = 15
      Top = 88
      Width = 60
      Height = 12
      Caption = #28040#36153#32047#35745#21040
      FocusControl = DBEditEh2
    end
    object Label3: TLabel
      Left = 15
      Top = 120
      Width = 60
      Height = 12
      Caption = #33258#21160#36716#29616#37329
      FocusControl = DBEditEh3
    end
    object Label4: TLabel
      Left = 15
      Top = 171
      Width = 60
      Height = 12
      Caption = #28040#36153#32047#35745#21040
      FocusControl = DBEditEh4
    end
    object Label5: TLabel
      Left = 15
      Top = 203
      Width = 60
      Height = 12
      Caption = #33258#21160#36716#31215#20998
      FocusControl = DBEditEh5
    end
    object RadioButton1: TRadioButton
      Left = 16
      Top = 48
      Width = 113
      Height = 17
      Caption = #28040#36153#39069#36716#29616#37329
      TabOrder = 5
    end
    object RadioButton2: TRadioButton
      Left = 16
      Top = 140
      Width = 113
      Height = 17
      Caption = #28040#36153#39069#32047#35745#31215#20998
      TabOrder = 6
    end
    object RadioButton3: TRadioButton
      Left = 16
      Top = 232
      Width = 113
      Height = 17
      Caption = #25353#28040#36153#39069#21319#32423#21345
      TabOrder = 7
    end
    object DBEditEh1: TDBEditEh
      Left = 253
      Top = 20
      Width = 121
      Height = 20
      DataField = 'Name1'
      DataSource = dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 0
      Visible = True
    end
    object DBEditEh2: TDBEditEh
      Left = 80
      Top = 84
      Width = 121
      Height = 20
      DataField = 'Name2'
      DataSource = dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 1
      Visible = True
    end
    object DBEditEh3: TDBEditEh
      Left = 80
      Top = 116
      Width = 121
      Height = 20
      DataField = 'Name3'
      DataSource = dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 2
      Visible = True
    end
    object DBEditEh4: TDBEditEh
      Left = 80
      Top = 167
      Width = 121
      Height = 20
      DataField = 'Name4'
      DataSource = dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 3
      Visible = True
    end
    object DBEditEh5: TDBEditEh
      Left = 80
      Top = 199
      Width = 121
      Height = 20
      DataField = 'Name5'
      DataSource = dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 4
      Visible = True
    end
  end
  object btnOK: TBitBtn
    Left = 254
    Top = 270
    Width = 75
    Height = 25
    Caption = #30830#23450
    TabOrder = 1
    OnClick = btnOKClick
    Glyph.Data = {
      42020000424D4202000000000000420000002800000010000000100000000100
      1000030000000002000000000000000000000000000000000000007C0000E003
      00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C007C00001F7C1F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C007C007C007C00001F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C007C007C007C00001F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C007C007C007C007C007C00001F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C007C007C007C007C007C007C00001F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7CEF3D007C007C00001F7C007C007C007C00001F7C1F7C1F7C
      1F7C1F7C1F7CEF3D007C00001F7C1F7C1F7C1F7C007C007C00001F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C007C007C007C00001F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C007C007C00001F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C007C007C00001F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CEF3D007C0000
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CEF3D007C
      00001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      007C007C00001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C}
  end
  object btnNO: TBitBtn
    Left = 332
    Top = 270
    Width = 75
    Height = 25
    Caption = #21462#28040
    TabOrder = 2
    OnClick = btnNOClick
    Glyph.Data = {
      42020000424D4202000000000000420000002800000010000000100000000100
      1000030000000002000000000000000000000000000000000000007C0000E003
      00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C00001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C00001F7C1F7C1F7C0000007C00001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C007C1F7C1F7C1F7C007C007C007C00001F7C1F7C1F7C1F7C1F7C1F7C1F7C
      00001F7C1F7C1F7C1F7C007C007C007C007C1F7C1F7C1F7C1F7C1F7C1F7C0000
      007C1F7C1F7C1F7C1F7C1F7C007C007C007C00001F7C1F7C1F7C1F7C0000007C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C007C007C007C00001F7C1F7C0000007C007C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C007C007C007C00000000007C007C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C007C007C007C007C007C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000007C007C007C00001F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000007C007C007C007C007C00001F7C
      1F7C1F7C1F7C1F7C1F7C1F7C00000000007C007C007C1F7C1F7C007C007C0000
      1F7C1F7C1F7C1F7C1F7C0000007C007C007C007C1F7C1F7C1F7C1F7C007C007C
      00001F7C1F7C1F7C1F7C007C007C007C007C1F7C1F7C1F7C1F7C1F7C1F7C007C
      007C00001F7C1F7C1F7C007C007C007C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C007C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C}
  end
  object QBaseInfo: TADOQuery
    Connection = DataMForm.ADOConnet
    Parameters = <>
    SQL.Strings = (
      'Select * From New'#20250#21592#20248#24800#35774#32622)
    Left = 184
    Top = 48
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoName1: TBCDField
      FieldName = 'Name1'
      Precision = 18
      Size = 0
    end
    object QBaseInfoName2: TBCDField
      FieldName = 'Name2'
      Precision = 18
      Size = 0
    end
    object QBaseInfoName3: TBCDField
      FieldName = 'Name3'
      Precision = 18
      Size = 0
    end
    object QBaseInfoName4: TBCDField
      FieldName = 'Name4'
      Precision = 18
      Size = 0
    end
    object QBaseInfoName5: TBCDField
      FieldName = 'Name5'
      Precision = 18
      Size = 0
    end
  end
  object dsBaseInfo: TDataSource
    AutoEdit = False
    DataSet = QBaseInfo
    Left = 224
    Top = 48
  end
end
