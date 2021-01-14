inherited PlanOperationForm: TPlanOperationForm
  Left = 179
  Top = 198
  Caption = #20250#21592#21345#35745#27425#25805#20316
  PixelsPerInch = 96
  TextHeight = 12
  inherited Panel1: TPanel
    Height = 145
    inherited GroupBox2: TGroupBox
      Height = 89
      object Label3: TLabel
        Left = 11
        Top = 16
        Width = 48
        Height = 12
        Caption = #39033#30446#21517#31216
      end
      object Label4: TLabel
        Left = 216
        Top = 16
        Width = 48
        Height = 12
        Caption = #24635' '#27425' '#25968
      end
      object Label5: TLabel
        Left = 11
        Top = 42
        Width = 48
        Height = 12
        Caption = #24050#29992#27425#25968
      end
      object Label6: TLabel
        Left = 11
        Top = 69
        Width = 48
        Height = 12
        Caption = #22791'    '#27880
      end
      object DBLookupComboboxEh1: TDBLookupComboboxEh
        Left = 63
        Top = 12
        Width = 121
        Height = 20
        DataField = #39033#30446#32534#21495
        DataSource = DataSource2
        DropDownBox.ShowTitles = True
        DropDownBox.Sizable = True
        DropDownBox.Width = 180
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        KeyField = #39033#30446#32534#21495
        ListField = #39033#30446#32534#21495';'#39033#30446#21517#31216
        ListFieldIndex = 1
        ListSource = dsBaseInfo
        TabOrder = 0
        Visible = True
      end
      object DBEditEh1: TDBEditEh
        Left = 270
        Top = 12
        Width = 121
        Height = 20
        DataField = #24635#27425#25968
        DataSource = DataSource2
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 1
        Visible = True
      end
      object DBEditEh2: TDBEditEh
        Left = 63
        Top = 38
        Width = 121
        Height = 20
        DataField = #24050#29992#27425#25968
        DataSource = DataSource2
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 2
        Visible = True
      end
      object DBEditEh3: TDBEditEh
        Left = 63
        Top = 65
        Width = 121
        Height = 20
        DataField = #22791#27880
        DataSource = DataSource2
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 3
        Visible = True
      end
    end
    inherited GroupBox1: TGroupBox
      object Label2: TLabel [1]
        Left = 216
        Top = 16
        Width = 48
        Height = 12
        Caption = #20250#21592#32534#21495
      end
      object Edit2: TEdit
        Left = 268
        Top = 12
        Width = 121
        Height = 20
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 1
      end
    end
  end
  inherited Panel2: TPanel
    Top = 145
    Height = 308
    inherited DBGridEh1: TDBGridEh
      Height = 306
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ID'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = #20250#21592#32534#21495
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = #39033#30446#32534#21495
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = #24635#27425#25968
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = #24050#29992#27425#25968
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = #20351#29992#26085#26399
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = #22791#27880
          Footers = <>
          Visible = False
        end>
    end
  end
  inherited ADOQuery1: TADOQuery
    Left = 264
    Top = 112
  end
  inherited ADOQuery2: TADOQuery
    CursorType = ctStatic
    OnNewRecord = ADOQuery2NewRecord
    SQL.Strings = (
      'Select * From New'#20250#21592#39033#30446#35745#27425#28040#36153#35774#32622)
    object ADOQuery2ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOQuery2DSDesigner: TWideStringField
      FieldName = #20250#21592#32534#21495
      Size = 10
    end
    object ADOQuery2DSDesigner2: TWideStringField
      FieldName = #39033#30446#32534#21495
      Size = 10
    end
    object ADOQuery2DSDesigner3: TIntegerField
      FieldName = #24635#27425#25968
    end
    object ADOQuery2DSDesigner4: TIntegerField
      FieldName = #24050#29992#27425#25968
    end
    object ADOQuery2DSDesigner5: TDateTimeField
      FieldName = #20351#29992#26085#26399
    end
    object ADOQuery2DSDesigner6: TWideStringField
      FieldName = #22791#27880
      Size = 200
    end
  end
  object QBaseInfo: TADOQuery
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select ID,'#39033#30446#32534#21495','#39033#30446#21517#31216','#29366#24577' From '#26381#21153#39033#30446' where '#29366#24577'='#39#20351#29992#39' Order by ID')
    Left = 328
    Top = 104
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TStringField
      DisplayWidth = 10
      FieldName = #39033#30446#32534#21495
    end
    object QBaseInfoDSDesigner2: TStringField
      DisplayWidth = 20
      FieldName = #39033#30446#21517#31216
      Size = 50
    end
    object QBaseInfoDSDesigner10: TStringField
      FieldName = #29366#24577
    end
  end
  object dsBaseInfo: TDataSource
    AutoEdit = False
    DataSet = QBaseInfo
    Left = 384
    Top = 104
  end
end
