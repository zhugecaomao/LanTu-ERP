inherited ProductBillEditForm: TProductBillEditForm
  Left = 186
  Top = 130
  Caption = #20135#21697#21333'---'#32534#36753
  ClientHeight = 437
  ClientWidth = 688
  PixelsPerInch = 96
  TextHeight = 12
  inherited Panel1: TPanel
    Width = 688
    object Label1: TLabel [0]
      Left = 16
      Top = 16
      Width = 48
      Height = 12
      Caption = #21333#25454#32534#21495
      FocusControl = DBEditEh1
    end
    object Label2: TLabel [1]
      Left = 208
      Top = 16
      Width = 48
      Height = 12
      Caption = #24405#21333#26085#26399
      FocusControl = DBDateTimeEditEh1
    end
    object Label3: TLabel [2]
      Left = 16
      Top = 40
      Width = 48
      Height = 12
      Caption = #21345'    '#21495
      FocusControl = Edit1
    end
    object Label4: TLabel [3]
      Left = 208
      Top = 40
      Width = 48
      Height = 12
      Caption = #20250#21592#32534#21495
      FocusControl = DBEditEh2
    end
    object Label5: TLabel [4]
      Left = 16
      Top = 64
      Width = 48
      Height = 12
      Caption = #22791'    '#27880
      FocusControl = DBEditEh3
    end
    inherited bbPrint: TBitBtn
      TabOrder = 5
    end
    object DBEditEh1: TDBEditEh
      Left = 72
      Top = 12
      Width = 121
      Height = 20
      DataField = #21333#25454#32534#21495
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 0
      Visible = True
    end
    object DBDateTimeEditEh1: TDBDateTimeEditEh
      Left = 264
      Top = 12
      Width = 121
      Height = 20
      DataField = #24405#21333#26085#26399
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      Kind = dtkDateEh
      TabOrder = 1
      Visible = True
    end
    object Edit1: TEdit
      Left = 72
      Top = 36
      Width = 121
      Height = 20
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 2
    end
    object DBEditEh2: TDBEditEh
      Left = 264
      Top = 36
      Width = 121
      Height = 20
      DataField = #20250#21592#32534#21495
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 3
      Visible = True
    end
    object DBEditEh3: TDBEditEh
      Left = 72
      Top = 60
      Width = 465
      Height = 20
      DataField = #22791#27880
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 4
      Visible = True
    end
  end
  inherited Panel2: TPanel
    Width = 688
    Height = 307
    inherited DBGridEh1: TDBGridEh
      Width = 686
      Height = 305
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
          FieldName = #20135#21697#32534#21495
          Footers = <>
          OnEditButtonClick = DBGridEh1Columns2EditButtonClick
        end
        item
          EditButtons = <>
          FieldName = #20135#21697#21517#31216
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = #20135#21697#31867#21035
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = #38144#21806#20215
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = #20135#21697#26465#30721
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = #20445#36136#26399
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = #25104#26412#20215
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = #36229#20648#30028#32447
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = #32570#36135#30028#32447
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = #25240#25187
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
  inherited Panel3: TPanel
    Top = 396
    Width = 688
  end
end
