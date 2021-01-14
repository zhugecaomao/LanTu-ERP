inherited BaseMdiForm1: TBaseMdiForm1
  Caption = 'BaseMdiForm1'
  PixelsPerInch = 96
  TextHeight = 12
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 688
    Height = 453
    Align = alClient
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
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #37096#38376#32534#21495
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #37096#38376#21517#31216
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #22791#27880
        Footers = <>
        Width = 96
      end>
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 80
    Top = 32
  end
  object ADOQuery1: TADOQuery
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#37096#38376#36164#26009)
    Left = 40
    Top = 32
  end
end
