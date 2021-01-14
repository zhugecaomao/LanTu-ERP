inherited UserLimit1Form: TUserLimit1Form
  Left = 233
  Top = 176
  Width = 719
  Height = 501
  Caption = #26435#38480#35774#32622
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  object Splitter1: TSplitter
    Left = 137
    Top = 43
    Height = 431
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 43
    Width = 137
    Height = 431
    Align = alLeft
    DataSource = DataSource1
    DrawMemoText = True
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Visible = False
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #21592#24037#32534#21495
        Footers = <>
        Visible = False
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #21592#24037#22995#21517
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #21592#24037#23494#30721
        Footers = <>
        Visible = False
        Width = 96
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 140
    Top = 43
    Width = 571
    Height = 431
    Align = alClient
    DataSource = DataSource2
    DrawMemoText = True
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    FrozenCols = 2
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight]
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Visible = False
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #21592#24037#32534#21495
        Footers = <>
        ReadOnly = True
        Visible = False
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #21592#24037#22995#21517
        Footers = <>
        ReadOnly = True
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #31383#20307#21517#31216
        Footers = <>
        ReadOnly = True
        Visible = False
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #31383#20307#26631#39064
        Footers = <>
        ReadOnly = True
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #26032#22686
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #20462#25913
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #21024#38500
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #26597#25214
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #36807#28388
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #25171#21360
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #23548#20986
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #27169#22359#26435#38480
        Footers = <>
        Width = 81
      end>
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 711
    Height = 43
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 37
        Width = 707
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 694
      Height = 37
      ButtonHeight = 35
      ButtonWidth = 31
      Caption = 'ToolBar1'
      Flat = True
      Images = DataMForm.ImageList
      ShowCaptions = True
      TabOrder = 0
      object tbsSep2: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'tbsSep2'
        ImageIndex = 45
        Style = tbsSeparator
      end
      object tbsPri: TToolButton
        Left = 8
        Top = 0
        Caption = #23494#30721
        ImageIndex = 51
        OnClick = tbsPriClick
      end
      object tbsSep3: TToolButton
        Left = 39
        Top = 0
        Width = 8
        Caption = 'tbsSep3'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object tbsExi: TToolButton
        Left = 47
        Top = 0
        Caption = #36864#20986
        ImageIndex = 4
        OnClick = tbsExiClick
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    AfterScroll = ADOQuery1AfterScroll
    Parameters = <>
    SQL.Strings = (
      'Select ID,'#21592#24037#32534#21495','#21592#24037#22995#21517','#21592#24037#23494#30721' From '#21592#24037#36164#26009' Order by ID')
    Left = 40
    Top = 80
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 40
    Top = 128
  end
  object ADOQuery2: TADOQuery
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From '#26435#38480#35774#32622)
    Left = 200
    Top = 136
    object ADOQuery2ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOQuery2DSDesigner: TWideStringField
      FieldName = #21592#24037#32534#21495
    end
    object ADOQuery2DSDesigner2: TWideStringField
      FieldName = #21592#24037#22995#21517
      Size = 30
    end
    object ADOQuery2DSDesigner3: TWideStringField
      FieldName = #31383#20307#21517#31216
    end
    object ADOQuery2DSDesigner4: TWideStringField
      FieldName = #31383#20307#26631#39064
      Size = 30
    end
    object ADOQuery2DSDesigner5: TBooleanField
      FieldName = #26032#22686
    end
    object ADOQuery2DSDesigner6: TBooleanField
      FieldName = #20462#25913
    end
    object ADOQuery2DSDesigner7: TBooleanField
      FieldName = #21024#38500
    end
    object ADOQuery2DSDesigner8: TBooleanField
      FieldName = #26597#25214
    end
    object ADOQuery2DSDesigner9: TBooleanField
      FieldName = #36807#28388
    end
    object ADOQuery2DSDesigner10: TBooleanField
      FieldName = #25171#21360
    end
    object ADOQuery2DSDesigner11: TBooleanField
      FieldName = #23548#20986
    end
    object ADOQuery2DSDesigner12: TBooleanField
      FieldName = #27169#22359#26435#38480
      OnChange = ADOQuery2DSDesigner12Change
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 248
    Top = 136
  end
end
