inherited ProjectPriceEditForm: TProjectPriceEditForm
  Left = 465
  Top = 266
  Width = 320
  Height = 137
  Caption = #21345#32423#20215#26684'---'#20462#25913
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel [4]
    Left = 8
    Top = 32
    Width = 48
    Height = 12
    Caption = #21345'    '#32423
  end
  object Label2: TLabel [5]
    Left = 8
    Top = 58
    Width = 48
    Height = 12
    Caption = #21333'    '#20215
  end
  object Label3: TLabel [6]
    Left = 8
    Top = 85
    Width = 48
    Height = 12
    Caption = #25240'    '#25187
  end
  inherited btnIns: TBitBtn
    Left = 225
  end
  inherited btnOK: TBitBtn
    Left = 225
  end
  inherited btnNO: TBitBtn
    Left = 225
  end
  object DBLookupComboboxEh1: TDBLookupComboboxEh
    Left = 64
    Top = 28
    Width = 145
    Height = 20
    DataField = #21345#32423#32534#21495
    DataSource = ProjectPriceForm.dsBaseInfo
    DropDownBox.Options = []
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    KeyField = #21345#32423#32534#21495
    ListField = #21345#32423#32534#21495';'#21345#32423#21517#31216
    ListFieldIndex = 1
    ListSource = dsBaseInfo
    TabOrder = 3
    Visible = True
  end
  object DBEditEh1: TDBEditEh
    Left = 64
    Top = 54
    Width = 145
    Height = 20
    DataField = #21333#20215
    DataSource = ProjectPriceForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 4
    Visible = True
  end
  object DBEditEh2: TDBEditEh
    Left = 64
    Top = 81
    Width = 145
    Height = 20
    DataField = #25240#25187
    DataSource = ProjectPriceForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 5
    Visible = True
  end
  object QBaseInfo: TADOQuery
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select ID,'#21345#32423#32534#21495','#21345#32423#21517#31216','#29366#24577' From '#20250#21592#21345#32423' where '#29366#24577'='#39#20351#29992#39' Order by ID')
    Left = 160
    Top = 80
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TWideStringField
      FieldName = #21345#32423#32534#21495
      Size = 10
    end
    object QBaseInfoDSDesigner2: TWideStringField
      FieldName = #21345#32423#21517#31216
    end
    object QBaseInfoDSDesigner5: TWideStringField
      FieldName = #29366#24577
    end
  end
  object dsBaseInfo: TDataSource
    AutoEdit = False
    DataSet = QBaseInfo
    Left = 200
    Top = 88
  end
end
