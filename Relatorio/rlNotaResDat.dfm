�
 TQRNOTARESDAT 0|  TPF0TqrNotaResDatqrNotaResDatLeft Top Width0Height Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightDataSetqrVendaFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLEQRSTRINGSBAND1 Functions.DATA00'''' 	OnPreviewQuickRepPreviewOptionsFirstPageHeaderLastPageFooter Page.ColumnsPage.Orientation
poPortraitPage.PaperSizeLetterPage.Values       �@      ��
@       �@      ��
@       �@       �@           PrinterSettings.CopiesPrinterSettings.OutputBinAutoPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage "PrinterSettings.UseStandardprinter PrinterSettings.UseCustomBinCodePrinterSettings.CustomBinCode PrinterSettings.ExtendedDuplex "PrinterSettings.UseCustomPaperCodePrinterSettings.CustomPaperCode PrinterSettings.PrintMetaFilePrinterSettings.MemoryLimit@B PrinterSettings.PrintQuality PrinterSettings.Collate PrinterSettings.ColorOption PrintIfEmpty	
SnapToGrid	UnitsMMZoomdPrevFormStylefsNormalPreviewInitialStatewsNormalPrevInitialZoomqrZoomToFit TQRBandQRBand1LeftTop!Width
Height4Frame.ColorclBlackFrame.DrawTopFrame.DrawBottom	Frame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteTransparentBandFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ForceNewColumnForceNewPage
ParentFontSize.ValuesUUUUUU��@UUUUUU��
@ PreCaluculateBandHeightKeepOnOnePageBandTyperbColumnHeader TQRLabel	QRLabel16LeftKTopWidthtHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values������j�@VUUUUU��@UUUUUUU�@UUUUUUu�@ 	AlignmenttaCenterAlignToBand	AutoSize	AutoStretchCaption   Relação VendaColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize  TQRLabelQRLabel1LeftTop#Width� HeightFrame.ColorclSilverFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@ XUUUUU�@UUUUUU5�@ �����R�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption6Data                                          Vlr.NotaColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize   TQRBandDetailBand1LeftTopUWidth
HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightFrame.WidthAlignToBottomColorclWhiteTransparentBandForceNewColumnForceNewPageSize.Values�������@UUUUUU��
@ PreCaluculateBandHeightKeepOnOnePageBandTyperbDetail 	TQRDBText	QRDBText2LeftTop WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@ XUUUUU�@           �����j�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetqrVenda	DataFieldDataMask
dd/mm/yyyyTransparentWordWrap	FontSize  	TQRDBText	QRDBText3Left� Top WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@      @�@           �����
�@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetqrVenda	DataFieldvvalorMaskR$ ###,###,##0.00TransparentWordWrap	FontSize   TQRBandPageHeaderBand1LeftTopWidth
HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottom	Frame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteTransparentBandForceNewColumnForceNewPageSize.Values������*�@UUUUUU��
@ PreCaluculateBandHeightKeepOnOnePageBandTyperbPageHeader 	TQRDBText	QRDBText1Left Top Width<HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@                          ��@ 	AlignmenttaLeftJustifyAlignToBand	AutoSize	AutoStretchColorclWhiteDataSetDM.TEmpresa	DataField	DESCRICAOFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparent	WordWrap	FontSize  TQRExprQRExpr3Left�Top Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@      ��	@          UUUUUUY�@ 	AlignmenttaRightJustifyAlignToBand	AutoSize	AutoStretchColorclWhiteResetAfterPrintTransparent	WordWrap	
Expression5   'Data/Hora: '+Date+'-'+Time+'   Página: '+PageNumberFontSize   TQRChildBand
ChildBand3LeftTop� Width
HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottom	Frame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteTransparentBandForceNewColumnForceNewPageSize.ValuesUUUUUUU� @UUUUUU��
@ PreCaluculateBandHeightKeepOnOnePage  TQRBandSummaryBand1LeftTopfWidth
Height(Frame.ColorclBlackFrame.DrawTop	Frame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteTransparentBandForceNewColumnForceNewPageSize.Values��������@UUUUUU��
@ PreCaluculateBandHeightKeepOnOnePageBandType	rbSummary TQRExprQRExpr1Left� TopWidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ XUUUUU�@ XUUUUU�@ �����ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ColorclWhite
ParentFontResetAfterPrintTransparentWordWrap	
ExpressionSum(vValor)MaskR$ ###,###,##0.00FontSize
  TQRLabelQRLabel2Left0TopWidth1HeightFrame.ColorclSilverFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@       �@ XUUUUU�@ XUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption	Total....ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
   TQueryqrVendaDatabaseNameJaeAdminSessionNameSesao1SQL.Strings#Select Data, Sum(VlrNota) as vvalorFrom nfVendaWhere Data=CDate('01/01/2001')Group By Data Left Top   