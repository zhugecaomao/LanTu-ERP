inherited ProjectBillEditForm: TProjectBillEditForm
  Left = 254
  Top = 197
  Caption = #39033#30446#21333'---'#32534#36753
  PixelsPerInch = 96
  TextHeight = 12
  inherited Panel1: TPanel
    object Label1: TLabel [0]
      Left = 16
      Top = 15
      Width = 48
      Height = 12
      Caption = #21333#25454#32534#21495
    end
    object Label2: TLabel [1]
      Left = 240
      Top = 15
      Width = 48
      Height = 12
      Caption = #24405#21333#26085#26399
    end
    object Label3: TLabel [2]
      Left = 16
      Top = 39
      Width = 48
      Height = 12
      Caption = #21345'    '#21495
    end
    object Label4: TLabel [3]
      Left = 240
      Top = 39
      Width = 48
      Height = 12
      Caption = #20250#21592#32534#21495
    end
    object Label5: TLabel [4]
      Left = 16
      Top = 64
      Width = 48
      Height = 12
      Caption = #22791'    '#27880
    end
    object DBEditEh1: TDBEditEh [5]
      Left = 69
      Top = 11
      Width = 121
      Height = 20
      DataField = #21333#25454#32534#21495
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 0
      Visible = True
    end
    object Edit1: TEdit [6]
      Left = 69
      Top = 35
      Width = 121
      Height = 20
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 1
    end
    object DBDateTimeEditEh1: TDBDateTimeEditEh [7]
      Left = 294
      Top = 11
      Width = 121
      Height = 20
      DataField = #24405#21333#26085#26399
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      Kind = dtkDateEh
      TabOrder = 2
      Visible = True
    end
    object DBEditEh3: TDBEditEh [8]
      Left = 69
      Top = 60
      Width = 121
      Height = 20
      DataField = #22791#27880
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 3
      Visible = True
    end
    inherited bbPrint: TBitBtn
      TabOrder = 4
    end
    object DBLookupComboboxEh1: TDBLookupComboboxEh
      Left = 296
      Top = 32
      Width = 121
      Height = 20
      DataField = #20250#21592#32534#21495
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      KeyField = #20250#21592#32534#21495
      ListField = #20250#21592#21517#31216
      ListSource = dsBaseInfo
      TabOrder = 5
      Visible = True
    end
  end
  inherited Panel2: TPanel
    inherited DBGridEh1: TDBGridEh
      OnKeyDown = DBGridEh1KeyDown
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ID'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = #21333#25454#32534#21495
          Footers = <>
          Visible = False
        end
        item
          ButtonStyle = cbsEllipsis
          EditButtons = <>
          FieldName = #39033#30446#32534#21495
          Footers = <>
          OnEditButtonClick = DBGridEh1Columns2EditButtonClick
        end
        item
          EditButtons = <>
          FieldName = #39033#30446#21517#31216
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = #31867#21035#32534#21495
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = #39033#30446#26465#30721
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = #21333#20215
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = #39033#30446#25240#25187
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = #26448#26009#36153#29992
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = #26448#26009#21333#20215
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = #26631#20934#24037#26102
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = #38656#29992#31215#20998
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = #26159#21542#25171#21253
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = #22791#27880
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = #29366#24577
          Footers = <>
        end>
    end
  end
  object QBaseInfo: TADOQuery
    Active = True
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From New'#20250#21592#20449#24687#35774#32622' Order by ID')
    Left = 432
    Top = 32
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TStringField
      FieldName = #20250#21592#32534#21495
    end
    object QBaseInfoDSDesigner2: TStringField
      FieldName = #20250#21592#21517#31216
      Size = 50
    end
    object QBaseInfoDSDesigner3: TDateTimeField
      FieldName = #24320#25143#26085#26399
    end
    object QBaseInfoDSDesigner5: TStringField
      FieldName = #21345#32423
    end
    object QBaseInfoDSDesigner6: TDateTimeField
      FieldName = #26377#25928#26399
    end
    object QBaseInfoDSDesigner7: TDateTimeField
      FieldName = #29983#26085
    end
    object QBaseInfoDSDesigner8: TStringField
      FieldName = #35777#20214#21495
      Size = 50
    end
    object QBaseInfoDSDesigner10: TStringField
      FieldName = #32852#31995#20154
    end
    object QBaseInfoDSDesigner11: TStringField
      FieldName = #32852#31995#30005#35805
    end
    object QBaseInfoDSDesigner12: TStringField
      FieldName = #22320#22336
      Size = 50
    end
    object QBaseInfoDSDesigner13: TStringField
      FieldName = #37038#25919#32534#30721
      Size = 6
    end
    object QBaseInfoDSDesigner14: TStringField
      FieldName = #22791#27880
      Size = 200
    end
    object QBaseInfoDSDesigner4: TBCDField
      FieldName = #24635#23384#27454#37329#39069
      Precision = 18
      Size = 0
    end
    object QBaseInfoDSDesigner15: TBCDField
      FieldName = #20313#39069
      Precision = 18
      Size = 0
    end
    object QBaseInfoDSDesigner17: TBCDField
      FieldName = #23384#27454#20248#24800
      Precision = 18
      Size = 0
    end
    object QBaseInfoDSDesigner22: TWideStringField
      FieldName = #21345#21495
    end
    object QBaseInfoDSDesigner16: TIntegerField
      FieldName = #31215#20998
    end
    object QBaseInfoDSDesigner19: TBCDField
      FieldName = #25276#37329
      Precision = 18
      Size = 0
    end
    object QBaseInfoDSDesigner21: TBCDField
      FieldName = #34917#21345#36153
      Precision = 18
      Size = 0
    end
    object QBaseInfoDSDesigner20: TWideStringField
      FieldName = #21475#20196
      Size = 10
    end
  end
  object dsBaseInfo: TDataSource
    AutoEdit = False
    DataSet = QBaseInfo
    Left = 488
    Top = 32
  end
end
