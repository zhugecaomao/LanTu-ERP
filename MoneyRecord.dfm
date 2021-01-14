inherited MoneyRecordForm: TMoneyRecordForm
  Left = 275
  Top = 245
  BorderIcons = [biSystemMenu]
  Caption = #23384#21462#27454#21382#21490#35760#24405
  ClientHeight = 417
  ClientWidth = 638
  PixelsPerInch = 96
  TextHeight = 12
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 638
    Height = 417
    Align = alClient
    DataSource = dsBaseInfo
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
    OnDblClick = DBGridEh1DblClick
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
        FieldName = #26085#26399
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #37329#39069
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #25805#20316#21592#32534#21495
        Footers = <>
        Visible = False
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #25805#20316#21592
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #22791#27880
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #31867#22411
        Footers = <>
        Visible = False
        Width = 96
      end>
  end
  object QBaseInfo: TADOQuery
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    Parameters = <>
    Left = 384
    Top = 56
  end
  object dsBaseInfo: TDataSource
    AutoEdit = False
    DataSet = QBaseInfo
    Left = 440
    Top = 56
  end
end
