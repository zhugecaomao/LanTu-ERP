inherited ProjectProductBillEditForm: TProjectProductBillEditForm
  Left = 200
  Top = 192
  BorderIcons = [biSystemMenu]
  Caption = #39033#30446#20135#21697#21333'---'#20462#25913
  ClientHeight = 452
  ClientWidth = 709
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 709
    Height = 113
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 384
      Top = 16
      Width = 48
      Height = 12
      Caption = #21333#25454#32534#21495
      FocusControl = DBEditEh1
    end
    object Label2: TLabel
      Left = 552
      Top = 16
      Width = 48
      Height = 12
      Caption = #24405#21333#26085#26399
      FocusControl = DBDateTimeEditEh1
    end
    object Label3: TLabel
      Left = 24
      Top = 48
      Width = 48
      Height = 12
      Caption = #21345'    '#21495
      FocusControl = Edit1
    end
    object Label4: TLabel
      Left = 232
      Top = 48
      Width = 48
      Height = 12
      Caption = #20250#21592#32534#21495
    end
    object Label5: TLabel
      Left = 24
      Top = 74
      Width = 48
      Height = 12
      Caption = #22791'    '#27880
    end
    object Label6: TLabel
      Left = 432
      Top = 48
      Width = 48
      Height = 12
      Caption = #20250#21592#21517#31216
    end
    object DBEditEh1: TDBEditEh
      Left = 440
      Top = 12
      Width = 96
      Height = 20
      DataField = #21333#25454#32534#21495
      DataSource = ProjectProductBillForm.DataSource1
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 0
      Visible = True
    end
    object DBDateTimeEditEh1: TDBDateTimeEditEh
      Left = 608
      Top = 12
      Width = 96
      Height = 20
      DataField = #24405#21333#26085#26399
      DataSource = ProjectProductBillForm.DataSource1
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      Kind = dtkDateEh
      TabOrder = 1
      Visible = True
    end
    object DBEditEh4: TDBEditEh
      Left = 80
      Top = 70
      Width = 617
      Height = 20
      DataField = #22791#27880
      DataSource = ProjectProductBillForm.DataSource1
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 5
      Visible = True
    end
    object Edit1: TEdit
      Left = 80
      Top = 44
      Width = 121
      Height = 20
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 2
      OnChange = Edit1Change
      OnExit = Edit1Exit
    end
    object DBEditEh2: TDBEditEh
      Left = 285
      Top = 44
      Width = 119
      Height = 20
      DataField = #20250#21592#32534#21495
      DataSource = ProjectProductBillForm.DataSource1
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 3
      Visible = True
    end
    object DBEditEh3: TDBEditEh
      Left = 488
      Top = 44
      Width = 201
      Height = 20
      DataField = #20250#21592#21517#31216
      DataSource = ProjectProductBillForm.DataSource1
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 4
      Visible = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 411
    Width = 709
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 473
      Top = 8
      Width = 75
      Height = 25
      Caption = #20445#23384#26032#22686
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 550
      Top = 8
      Width = 75
      Height = 25
      Caption = #30830'  '#23450
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 628
      Top = 8
      Width = 75
      Height = 25
      Caption = #36864'  '#20986
      TabOrder = 2
      OnClick = BitBtn3Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 113
    Width = 709
    Height = 298
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = #39033#30446
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 701
        Height = 271
        Align = alClient
        DataSource = ProjectProductBillForm.DataSource2
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        OnEnter = DBGridEh1Enter
        OnKeyDown = DBGridEh1KeyDown
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
            FieldName = #21333#25454#32534#21495
            Footers = <>
            Visible = False
            Width = 96
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = #39033#30446#32534#21495
            Footers = <>
            Width = 96
            OnEditButtonClick = DBGridEh1Columns2EditButtonClick
          end
          item
            EditButtons = <>
            FieldName = #39033#30446#21517#31216
            Footers = <>
            ReadOnly = True
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #31867#21035#32534#21495
            Footers = <>
            ReadOnly = True
            Visible = False
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #39033#30446#26465#30721
            Footers = <>
            ReadOnly = True
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #21333#20215
            Footers = <>
            ReadOnly = True
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #39033#30446#25240#25187
            Footers = <>
            ReadOnly = True
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #26448#26009#36153#29992
            Footers = <>
            ReadOnly = True
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #26448#26009#21333#20215
            Footers = <>
            ReadOnly = True
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #26631#20934#24037#26102
            Footers = <>
            ReadOnly = True
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #38656#29992#31215#20998
            Footers = <>
            ReadOnly = True
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #26159#21542#25171#21253
            Footers = <>
            ReadOnly = True
            Visible = False
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #22791#27880
            Footers = <>
            ReadOnly = True
            Visible = False
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #29366#24577
            Footers = <>
            ReadOnly = True
            Visible = False
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #25968#37327
            Footers = <>
            Width = 96
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #20135#21697
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 701
        Height = 271
        Align = alClient
        DataSource = ProjectProductBillForm.DataSource3
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        OnEnter = DBGridEh2Enter
        OnKeyDown = DBGridEh2KeyDown
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
            FieldName = #21333#25454#32534#21495
            Footers = <>
            Visible = False
            Width = 96
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = #20135#21697#32534#21495
            Footers = <>
            Width = 96
            OnEditButtonClick = DBGridEh2Columns2EditButtonClick
          end
          item
            EditButtons = <>
            FieldName = #20135#21697#21517#31216
            Footers = <>
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #31867#21035#32534#21495
            Footers = <>
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #31867#21035#21517#31216
            Footers = <>
            Width = 121
          end
          item
            EditButtons = <>
            FieldName = #38144#21806#20215
            Footers = <>
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #20135#21697#26465#30721
            Footers = <>
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #20445#36136#26399
            Footers = <>
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #25104#26412#20215
            Footers = <>
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #36229#20648#30028#32447
            Footers = <>
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #32570#36135#30028#32447
            Footers = <>
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #20135#21697#25240#25187
            Footers = <>
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #38656#29992#31215#20998
            Footers = <>
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #26159#21542#25171#21253
            Footers = <>
            Visible = False
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #22791#27880
            Footers = <>
            Visible = False
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #29366#24577
            Footers = <>
            Visible = False
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = #25968#37327
            Footers = <>
            Width = 96
          end>
      end
    end
  end
  object ADOQryTmp: TADOQuery
    Connection = DataMForm.ADOConnet
    Parameters = <>
    Left = 296
    Top = 16
  end
  object Ado_insert: TADOQuery
    Connection = DataMForm.ADOConnet
    Parameters = <>
    Left = 260
    Top = 312
  end
end
