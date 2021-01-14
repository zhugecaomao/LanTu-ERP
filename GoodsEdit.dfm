inherited GoodsEditForm: TGoodsEditForm
  Left = 127
  Top = 290
  Caption = #21830#21697'--'#32534#36753
  ClientHeight = 340
  ClientWidth = 541
  PixelsPerInch = 96
  TextHeight = 12
  inherited btnIns: TBitBtn
    Left = 451
  end
  inherited btnOK: TBitBtn
    Left = 451
  end
  inherited btnNO: TBitBtn
    Left = 451
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 441
    Height = 340
    ActivePage = TabSheet1
    Align = alLeft
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = #22522#26412#20449#24687
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 48
        Height = 12
        Caption = #21830#21697#21517#31216
        FocusControl = DBEditEh1
      end
      object Label2: TLabel
        Left = 16
        Top = 53
        Width = 48
        Height = 12
        Caption = #21830#21697#32534#21495
        FocusControl = DBEditEh2
      end
      object Label3: TLabel
        Left = 218
        Top = 53
        Width = 48
        Height = 12
        Caption = #31616'    '#31216
        FocusControl = DBEditEh3
      end
      object Label4: TLabel
        Left = 16
        Top = 82
        Width = 48
        Height = 12
        Caption = #31867#21035#32534#21495
        FocusControl = DBEditEh4
      end
      object Label5: TLabel
        Left = 218
        Top = 82
        Width = 48
        Height = 12
        Caption = #31867#21035#21517#31216
        FocusControl = DBEditEh5
      end
      object Label6: TLabel
        Left = 16
        Top = 112
        Width = 48
        Height = 12
        Caption = #21830#21697#35268#26684
        FocusControl = DBEditEh6
      end
      object Label7: TLabel
        Left = 218
        Top = 112
        Width = 48
        Height = 12
        Caption = #21830#21697#22411#21495
        FocusControl = DBEditEh7
      end
      object Label8: TLabel
        Left = 16
        Top = 141
        Width = 48
        Height = 12
        Caption = #21333#20301#32534#21495
        FocusControl = DBEditEh8
      end
      object Label9: TLabel
        Left = 218
        Top = 141
        Width = 48
        Height = 12
        Caption = #21333#20301#21517#31216
        FocusControl = DBEditEh9
      end
      object Label10: TLabel
        Left = 16
        Top = 170
        Width = 48
        Height = 12
        Caption = #25340#38899#32534#30721
        FocusControl = DBEditEh10
      end
      object Label11: TLabel
        Left = 218
        Top = 170
        Width = 48
        Height = 12
        Caption = #26465'    '#30721
        FocusControl = DBEditEh11
      end
      object Label12: TLabel
        Left = 16
        Top = 200
        Width = 48
        Height = 12
        Caption = #21333#20301#27604#20363
        FocusControl = DBEditEh12
      end
      object Label13: TLabel
        Left = 16
        Top = 229
        Width = 48
        Height = 12
        Caption = #20135'    '#22320
        FocusControl = DBEditEh13
      end
      object Label14: TLabel
        Left = 16
        Top = 288
        Width = 48
        Height = 12
        Caption = #22791'    '#27880
        FocusControl = DBEditEh14
      end
      object DBEditEh1: TDBEditEh
        Left = 72
        Top = 20
        Width = 321
        Height = 20
        DataField = #21830#21697#21517#31216
        DataSource = GoodsForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 0
        Visible = True
      end
      object DBEditEh2: TDBEditEh
        Left = 72
        Top = 49
        Width = 121
        Height = 20
        DataField = #21830#21697#32534#21495
        DataSource = GoodsForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 1
        Visible = True
      end
      object DBEditEh3: TDBEditEh
        Left = 274
        Top = 49
        Width = 121
        Height = 20
        DataField = #31616#31216
        DataSource = GoodsForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 2
        Visible = True
      end
      object DBEditEh4: TDBEditEh
        Left = 72
        Top = 78
        Width = 121
        Height = 20
        DataField = #31867#21035#32534#21495
        DataSource = GoodsForm.dsBaseInfo
        EditButtons = <
          item
            Style = ebsEllipsisEh
            OnClick = DBEditEh4EditButtons0Click
          end>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 3
        Visible = True
      end
      object DBEditEh5: TDBEditEh
        Left = 274
        Top = 78
        Width = 121
        Height = 20
        DataField = #31867#21035#21517#31216
        DataSource = GoodsForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 4
        Visible = True
      end
      object DBEditEh6: TDBEditEh
        Left = 72
        Top = 108
        Width = 121
        Height = 20
        DataField = #21830#21697#35268#26684
        DataSource = GoodsForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 5
        Visible = True
      end
      object DBEditEh7: TDBEditEh
        Left = 274
        Top = 108
        Width = 121
        Height = 20
        DataField = #21830#21697#22411#21495
        DataSource = GoodsForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 6
        Visible = True
      end
      object DBEditEh8: TDBEditEh
        Left = 72
        Top = 137
        Width = 121
        Height = 20
        DataField = #21333#20301#32534#21495
        DataSource = GoodsForm.dsBaseInfo
        EditButtons = <
          item
            Style = ebsEllipsisEh
            OnClick = DBEditEh8EditButtons0Click
          end>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 7
        Visible = True
      end
      object DBEditEh9: TDBEditEh
        Left = 274
        Top = 137
        Width = 121
        Height = 20
        DataField = #21333#20301#21517#31216
        DataSource = GoodsForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 8
        Visible = True
      end
      object DBEditEh10: TDBEditEh
        Left = 72
        Top = 166
        Width = 121
        Height = 20
        DataField = #25340#38899#32534#30721
        DataSource = GoodsForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 9
        Visible = True
      end
      object DBEditEh11: TDBEditEh
        Left = 274
        Top = 166
        Width = 121
        Height = 20
        DataField = #26465#30721
        DataSource = GoodsForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 10
        Visible = True
      end
      object DBEditEh12: TDBEditEh
        Left = 72
        Top = 196
        Width = 121
        Height = 20
        DataField = #21333#20301#27604#20363
        DataSource = GoodsForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 11
        Visible = True
      end
      object DBEditEh13: TDBEditEh
        Left = 72
        Top = 225
        Width = 121
        Height = 20
        DataField = #20135#22320
        DataSource = GoodsForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 12
        Visible = True
      end
      object DBCheckBoxEh1: TDBCheckBoxEh
        Left = 16
        Top = 258
        Width = 97
        Height = 17
        Caption = #26159#21542#21487#20351#29992
        DataField = #26159#21542#21487#20351#29992
        DataSource = GoodsForm.dsBaseInfo
        TabOrder = 13
        TabStop = True
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEditEh14: TDBEditEh
        Left = 72
        Top = 284
        Width = 321
        Height = 20
        DataField = #22791#27880
        DataSource = GoodsForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 14
        Visible = True
      end
    end
    object TabSheet2: TTabSheet
      Caption = #20215#26684#20449#24687
      ImageIndex = 1
      object Label15: TLabel
        Left = 16
        Top = 16
        Width = 48
        Height = 12
        Caption = #21442#32771#36827#20215
        FocusControl = DBEditEh15
      end
      object Label16: TLabel
        Left = 16
        Top = 46
        Width = 48
        Height = 12
        Caption = #21442#32771#21806#20215
        FocusControl = DBEditEh16
      end
      object Label17: TLabel
        Left = 10
        Top = 76
        Width = 54
        Height = 12
        Caption = #39044#35774#21806#20215'1'
        FocusControl = DBEditEh17
      end
      object Label18: TLabel
        Left = 232
        Top = 76
        Width = 54
        Height = 12
        Caption = #39044#35774#21806#20215'2'
        FocusControl = DBEditEh18
      end
      object Label19: TLabel
        Left = 10
        Top = 106
        Width = 54
        Height = 12
        Caption = #39044#35774#21806#20215'3'
        FocusControl = DBEditEh19
      end
      object Label20: TLabel
        Left = 232
        Top = 106
        Width = 54
        Height = 12
        Caption = #39044#35774#21806#20215'4'
        FocusControl = DBEditEh20
      end
      object Label21: TLabel
        Left = 16
        Top = 136
        Width = 48
        Height = 12
        Caption = #24211#23384#19978#38480
        FocusControl = DBEditEh21
      end
      object Label22: TLabel
        Left = 238
        Top = 136
        Width = 48
        Height = 12
        Caption = #24211#23384#19979#38480
        FocusControl = DBEditEh22
      end
      object DBEditEh15: TDBEditEh
        Left = 72
        Top = 12
        Width = 121
        Height = 20
        DataField = #21442#32771#36827#20215
        DataSource = GoodsForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 0
        Visible = True
      end
      object DBEditEh16: TDBEditEh
        Left = 72
        Top = 42
        Width = 121
        Height = 20
        DataField = #21442#32771#21806#20215
        DataSource = GoodsForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 1
        Visible = True
      end
      object DBEditEh17: TDBEditEh
        Left = 72
        Top = 72
        Width = 121
        Height = 20
        DataField = #39044#35774#21806#20215'1'
        DataSource = GoodsForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 2
        Visible = True
      end
      object DBEditEh18: TDBEditEh
        Left = 296
        Top = 72
        Width = 121
        Height = 20
        DataField = #39044#35774#21806#20215'2'
        DataSource = GoodsForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 3
        Visible = True
      end
      object DBEditEh19: TDBEditEh
        Left = 72
        Top = 102
        Width = 121
        Height = 20
        DataField = #39044#35774#21806#20215'3'
        DataSource = GoodsForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 4
        Visible = True
      end
      object DBEditEh20: TDBEditEh
        Left = 296
        Top = 102
        Width = 121
        Height = 20
        DataField = #39044#35774#21806#20215'4'
        DataSource = GoodsForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 5
        Visible = True
      end
      object DBEditEh21: TDBEditEh
        Left = 72
        Top = 132
        Width = 121
        Height = 20
        DataField = #24211#23384#19978#38480
        DataSource = GoodsForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 6
        Visible = True
      end
      object DBEditEh22: TDBEditEh
        Left = 296
        Top = 132
        Width = 121
        Height = 20
        DataField = #24211#23384#19979#38480
        DataSource = GoodsForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 7
        Visible = True
      end
    end
  end
end
