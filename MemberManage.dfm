inherited MemberManageForm: TMemberManageForm
  Left = 66
  Top = 179
  Width = 623
  Height = 386
  Caption = #20250#21592#20449#24687
  PixelsPerInch = 96
  TextHeight = 12
  inherited CoolBar1: TCoolBar
    Width = 615
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 37
        Width = 611
      end>
    inherited ToolBar1: TToolBar
      Width = 598
      inherited tbIns: TToolButton
        OnClick = tbInsClick
      end
      inherited tbEdi: TToolButton
        OnClick = tbEdiClick
      end
    end
  end
  inherited DBGridEh1: TDBGridEh
    Width = 615
    Height = 291
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
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #20250#21592#21517#31216
        Footers = <>
        Width = 145
      end
      item
        EditButtons = <>
        FieldName = #24320#25143#26085#26399
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #21345#32423#32534#21495
        Footers = <>
        Visible = False
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = #21345#32423#21517#31216
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #21345#21495
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #26377#25928#26399
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #29983#26085
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #35777#20214#21495
        Footers = <>
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = #36170#24080#39069#24230
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #32852#31995#20154
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #32852#31995#30005#35805
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #22320#22336
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #37038#25919#32534#30721
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #22791#27880
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #34917#21345#36153
        Footers = <>
        Visible = False
      end>
  end
  inherited Panel1: TPanel
    Top = 334
    Width = 615
    object BitBtn1: TBitBtn
      Left = 0
      Top = 1
      Width = 75
      Height = 25
      Caption = #21457'  '#21345
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn6: TBitBtn
      Left = 74
      Top = 1
      Width = 75
      Height = 25
      Caption = #35745#27425#25805#20316
      TabOrder = 1
      Visible = False
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 148
      Top = 1
      Width = 75
      Height = 25
      Caption = #31215#20998#28040#36153
      TabOrder = 2
      Visible = False
      OnClick = BitBtn7Click
    end
  end
  inherited QBaseInfo: TADOQuery
    CursorType = ctStatic
    BeforePost = QBaseInfoBeforePost
    SQL.Strings = (
      'Select * From '#20250#21592#36164#26009' Order by ID')
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TStringField
      FieldName = #20250#21592#32534#21495
      OnValidate = QBaseInfoDSDesignerValidate
    end
    object QBaseInfoDSDesigner2: TStringField
      FieldName = #20250#21592#21517#31216
      Size = 50
    end
    object QBaseInfoDSDesigner3: TDateTimeField
      FieldName = #24320#25143#26085#26399
    end
    object QBaseInfoDSDesigner5: TWideStringField
      FieldName = #21345#32423#32534#21495
    end
    object QBaseInfoDSDesigner18: TWideStringField
      FieldName = #21345#32423#21517#31216
      Size = 30
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
    object QBaseInfoDSDesigner23: TWideStringField
      FieldName = #25163#26426
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
    object QBaseInfoDSDesigner9: TWideStringField
      FieldName = #21345#29366#24577
    end
    object QBaseInfoDSDesigner24: TBCDField
      FieldName = #28040#36153#37329#39069
      Precision = 19
    end
    object QBaseInfoDSDesigner25: TWideStringField
      FieldName = #21382#21490#21345#21495
      Size = 200
    end
  end
  inherited QIsUnique: TADOQuery
    Parameters = <
      item
        Name = 'Code'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'select ID from '#20250#21592#36164#26009' where '#20250#21592#32534#21495'=:Code')
  end
end
