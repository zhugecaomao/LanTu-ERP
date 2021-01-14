inherited UserForm: TUserForm
  Left = 311
  Top = 178
  Caption = #29992#25143#31649#29702
  PixelsPerInch = 96
  TextHeight = 12
  inherited Panel1: TPanel
    object BitBtn1: TBitBtn
      Left = 16
      Top = 0
      Width = 121
      Height = 25
      Caption = #29992#25143#22900#23646#30340#26435#38480#32452
      TabOrder = 0
    end
  end
  inherited QBaseInfo: TADOQuery
    SQL.Strings = (
      'Select * From NewUser Order by ID')
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfofCode: TWideStringField
      FieldName = 'fCode'
      OnValidate = QBaseInfofCodeValidate
      Size = 50
    end
    object QBaseInfofName: TWideStringField
      FieldName = 'fName'
      Size = 50
    end
    object QBaseInfofPWD: TWideStringField
      FieldName = 'fPWD'
      Size = 50
    end
    object QBaseInfofGroupID: TIntegerField
      FieldName = 'fGroupID'
    end
    object QBaseInfofStatus: TBooleanField
      FieldName = 'fStatus'
    end
    object QBaseInfofNotes: TWideStringField
      FieldName = 'fNotes'
      Size = 200
    end
    object QBaseInfofFlag: TBooleanField
      FieldName = 'fFlag'
    end
  end
  inherited QIsUnique: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Code'
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select ID from NewUser where fCode=:Code')
  end
end
