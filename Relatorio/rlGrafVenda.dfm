�
 TQRGRAFVENDA 0v  TPF0TqrGrafVendaqrGrafVendaLeft Top WidthzHeight�Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightDataSetqrProduFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLEQRSTRINGSBAND1 Functions.DATA00'''' 	OnPreviewQuickRepPreviewOptionsFirstPageHeaderLastPageFooter Page.ColumnsPage.OrientationpoLandscapePage.PaperSizeLetterPage.Values       �@      ��
@       �@      ��
@       �@       �@           PrinterSettings.CopiesPrinterSettings.OutputBinAutoPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage "PrinterSettings.UseStandardprinter PrinterSettings.UseCustomBinCodePrinterSettings.CustomBinCode PrinterSettings.ExtendedDuplex "PrinterSettings.UseCustomPaperCodePrinterSettings.CustomPaperCode PrinterSettings.PrintMetaFilePrinterSettings.MemoryLimit@B PrinterSettings.PrintQuality PrinterSettings.Collate PrinterSettings.ColorOption PrintIfEmpty	
SnapToGrid	UnitsMMZoom<PrevFormStylefsNormalPreviewInitialStatewsNormalPrevInitialZoomqrZoomToFit TQRBandQRBand1LeftTopWidthXHeight�Frame.ColorclBlackFrame.DrawTopFrame.DrawBottom	Frame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteTransparentBandFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ForceNewColumnForceNewPage
ParentFontSize.Values�8��8�B�
@VUUUUU]�
@ PreCaluculateBandHeightKeepOnOnePageBandTyperbColumnHeader TQRLabel	QRLabel16LeftTopWidth:HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values��8��8N�@�q�qa�	@��������@�8��8���@ 	AlignmenttaCenterAlignToBand	AutoSize	AutoStretchCaption   Gráfico vendasColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRImageQRImage1LeftTopWidthNHeight� Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values��8��8ڟ@��������@������J�@q�qǛ�
@ Center	  TQRImageQRImage2LeftTop� WidthNHeight� Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values��8��8ڟ@��������@�q�q�@q�qǛ�
@ Center	  TQRImageQRImage3LeftTop@WidthNHeight� Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values��8��8ڟ@��������@�8��8�c�	@q�qǛ�
@ Center	   TQRChildBand
ChildBand1LeftTop�WidthXHeight Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteTransparentBandForceNewColumnForceNewPageSize.Values          VUUUUU]�
@ PreCaluculateBandHeightKeepOnOnePage TQRLabelQRLabel2LeftTopjWidthAHeight	Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@UUUUUUU�@VUUUUU��@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionForma de Pagamento: ColorclWhiteTransparentWordWrap	FontSize   TQRBandPageHeaderBand1LeftTopWidthXHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottom	Frame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteTransparentBandForceNewColumnForceNewPageSize.Values�q�q�@VUUUUU]�
@ PreCaluculateBandHeightKeepOnOnePageBandTyperbPageHeader 	TQRDBText	QRDBText1Left Top Width$Height
Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�8��8�c�@                          ��@ 	AlignmenttaLeftJustifyAlignToBand	AutoSize	AutoStretchColorclWhiteDataSetDM.TEmpresa	DataField	DESCRICAOFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparent	WordWrap	FontSize  TQRExprQRExpr3Left�Top Width� Height	Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@q�q���	@          r�qǑ�@ 	AlignmenttaRightJustifyAlignToBand	AutoSize	AutoStretchColorclWhiteResetAfterPrintTransparent	WordWrap	
Expression5   'Data/Hora: '+Date+'-'+Time+'   Página: '+PageNumberFontSize   TQueryqrProduDatabaseNameJaeAdminSessionNameSesao1SQL.StringsSELECT CALIBRE, COUNT(*) AS CT  FROM CADPRODU WHERE MID(CODIGO,1,1) = 0   AND MID(CODIGO,3,1) = 0 GROUP BY CALIBRE   LeftTop   