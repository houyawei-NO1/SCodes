QT += multimedia concurrent

android {
    QT += androidextras
}

CONFIG += qmltypes
QML_IMPORT_NAME = com.scythestudio.scodes
QML_IMPORT_MAJOR_VERSION = 1

INCLUDEPATH += \
    $$PWD/ \
    $$PWD/zxing-cpp/core/src/ \
    $$PWD/zxing-cpp/thirdparty/stb/

HEADERS += \
    $$PWD/SBarcodeDecoder.h \
    $$PWD/SBarcodeFilter.h \
    $$PWD/SBarcodeGenerator.h \
    $$PWD/qvideoframeconversionhelper_p.h \
    $$PWD/zxing-cpp/core/src/BarcodeFormat.h \
    $$PWD/zxing-cpp/core/src/BinaryBitmap.h \
    $$PWD/zxing-cpp/core/src/BitArray.h \
    $$PWD/zxing-cpp/core/src/BitHacks.h \
    $$PWD/zxing-cpp/core/src/BitMatrix.h \
    $$PWD/zxing-cpp/core/src/BitMatrixIO.h \
    $$PWD/zxing-cpp/core/src/BitSource.h \
    $$PWD/zxing-cpp/core/src/ByteArray.h \
    $$PWD/zxing-cpp/core/src/ByteMatrix.h \
    $$PWD/zxing-cpp/core/src/CharacterSet.h \
    $$PWD/zxing-cpp/core/src/CharacterSetECI.h \
    $$PWD/zxing-cpp/core/src/CustomData.h \
    $$PWD/zxing-cpp/core/src/DecodeHints.h \
    $$PWD/zxing-cpp/core/src/DecodeStatus.h \
    $$PWD/zxing-cpp/core/src/DecoderResult.h \
    $$PWD/zxing-cpp/core/src/DetectorResult.h \
    $$PWD/zxing-cpp/core/src/GTIN.h \
    $$PWD/zxing-cpp/core/src/GenericGF.h \
    $$PWD/zxing-cpp/core/src/GenericGFPoly.h \
    $$PWD/zxing-cpp/core/src/GenericLuminanceSource.h \
    $$PWD/zxing-cpp/core/src/GlobalHistogramBinarizer.h \
    $$PWD/zxing-cpp/core/src/GridSampler.h \
    $$PWD/zxing-cpp/core/src/HybridBinarizer.h \
    $$PWD/zxing-cpp/core/src/LogMatrix.h \
    $$PWD/zxing-cpp/core/src/LuminanceSource.h \
    $$PWD/zxing-cpp/core/src/Matrix.h \
    $$PWD/zxing-cpp/core/src/MultiFormatReader.h \
    $$PWD/zxing-cpp/core/src/MultiFormatWriter.h \
    $$PWD/zxing-cpp/core/src/Pattern.h \
    $$PWD/zxing-cpp/core/src/PerspectiveTransform.h \
    $$PWD/zxing-cpp/core/src/Point.h \
    $$PWD/zxing-cpp/core/src/Quadrilateral.h \
    $$PWD/zxing-cpp/core/src/ReadBarcode.h \
    $$PWD/zxing-cpp/core/src/Reader.h \
    $$PWD/zxing-cpp/core/src/ReedSolomonDecoder.h \
    $$PWD/zxing-cpp/core/src/ReedSolomonEncoder.h \
    $$PWD/zxing-cpp/core/src/Result.h \
    $$PWD/zxing-cpp/core/src/ResultMetadata.h \
    $$PWD/zxing-cpp/core/src/ResultPoint.h \
    $$PWD/zxing-cpp/core/src/TextDecoder.h \
    $$PWD/zxing-cpp/core/src/TextEncoder.h \
    $$PWD/zxing-cpp/core/src/TextUtfEncoding.h \
    $$PWD/zxing-cpp/core/src/TritMatrix.h \
    $$PWD/zxing-cpp/core/src/WhiteRectDetector.h \
    $$PWD/zxing-cpp/core/src/ZXBigInteger.h \
    $$PWD/zxing-cpp/core/src/ZXConfig.h \
    $$PWD/zxing-cpp/core/src/ZXContainerAlgorithms.h \
    $$PWD/zxing-cpp/core/src/ZXFlags.h \
    $$PWD/zxing-cpp/core/src/ZXNullable.h \
    $$PWD/zxing-cpp/core/src/ZXNumeric.h \
    $$PWD/zxing-cpp/core/src/ZXStrConvWorkaround.h \
    $$PWD/zxing-cpp/core/src/ZXTestSupport.h \
    $$PWD/zxing-cpp/core/src/aztec/AZDecoder.h \
    $$PWD/zxing-cpp/core/src/aztec/AZDetector.h \
    $$PWD/zxing-cpp/core/src/aztec/AZDetectorResult.h \
    $$PWD/zxing-cpp/core/src/aztec/AZEncoder.h \
    $$PWD/zxing-cpp/core/src/aztec/AZEncodingState.h \
    $$PWD/zxing-cpp/core/src/aztec/AZHighLevelEncoder.h \
    $$PWD/zxing-cpp/core/src/aztec/AZReader.h \
    $$PWD/zxing-cpp/core/src/aztec/AZToken.h \
    $$PWD/zxing-cpp/core/src/aztec/AZWriter.h \
    $$PWD/zxing-cpp/core/src/datamatrix/DMBitMatrixParser.h \
    $$PWD/zxing-cpp/core/src/datamatrix/DMDataBlock.h \
    $$PWD/zxing-cpp/core/src/datamatrix/DMDecoder.h \
    $$PWD/zxing-cpp/core/src/datamatrix/DMDefaultPlacement.h \
    $$PWD/zxing-cpp/core/src/datamatrix/DMDetector.h \
    $$PWD/zxing-cpp/core/src/datamatrix/DMECB.h \
    $$PWD/zxing-cpp/core/src/datamatrix/DMECEncoder.h \
    $$PWD/zxing-cpp/core/src/datamatrix/DMEncoderContext.h \
    $$PWD/zxing-cpp/core/src/datamatrix/DMHighLevelEncoder.h \
    $$PWD/zxing-cpp/core/src/datamatrix/DMReader.h \
    $$PWD/zxing-cpp/core/src/datamatrix/DMSymbolInfo.h \
    $$PWD/zxing-cpp/core/src/datamatrix/DMSymbolShape.h \
    $$PWD/zxing-cpp/core/src/datamatrix/DMVersion.h \
    $$PWD/zxing-cpp/core/src/datamatrix/DMWriter.h \
    $$PWD/zxing-cpp/core/src/maxicode/MCBitMatrixParser.h \
    $$PWD/zxing-cpp/core/src/maxicode/MCDecoder.h \
    $$PWD/zxing-cpp/core/src/maxicode/MCReader.h \
    $$PWD/zxing-cpp/core/src/oned/ODCodabarReader.h \
    $$PWD/zxing-cpp/core/src/oned/ODCodabarWriter.h \
    $$PWD/zxing-cpp/core/src/oned/ODCode128Patterns.h \
    $$PWD/zxing-cpp/core/src/oned/ODCode128Reader.h \
    $$PWD/zxing-cpp/core/src/oned/ODCode128Writer.h \
    $$PWD/zxing-cpp/core/src/oned/ODCode39Reader.h \
    $$PWD/zxing-cpp/core/src/oned/ODCode39Writer.h \
    $$PWD/zxing-cpp/core/src/oned/ODCode93Reader.h \
    $$PWD/zxing-cpp/core/src/oned/ODCode93Writer.h \
    $$PWD/zxing-cpp/core/src/oned/ODEAN13Reader.h \
    $$PWD/zxing-cpp/core/src/oned/ODEAN13Writer.h \
    $$PWD/zxing-cpp/core/src/oned/ODEAN8Reader.h \
    $$PWD/zxing-cpp/core/src/oned/ODEAN8Writer.h \
    $$PWD/zxing-cpp/core/src/oned/ODEANManufacturerOrgSupport.h \
    $$PWD/zxing-cpp/core/src/oned/ODITFReader.h \
    $$PWD/zxing-cpp/core/src/oned/ODITFWriter.h \
    $$PWD/zxing-cpp/core/src/oned/ODMultiUPCEANReader.h \
    $$PWD/zxing-cpp/core/src/oned/ODRSS14Reader.h \
    $$PWD/zxing-cpp/core/src/oned/ODRSSExpandedReader.h \
    $$PWD/zxing-cpp/core/src/oned/ODReader.h \
    $$PWD/zxing-cpp/core/src/oned/ODRowReader.h \
    $$PWD/zxing-cpp/core/src/oned/ODUPCAReader.h \
    $$PWD/zxing-cpp/core/src/oned/ODUPCAWriter.h \
    $$PWD/zxing-cpp/core/src/oned/ODUPCEANCommon.h \
    $$PWD/zxing-cpp/core/src/oned/ODUPCEANExtensionSupport.h \
    $$PWD/zxing-cpp/core/src/oned/ODUPCEANReader.h \
    $$PWD/zxing-cpp/core/src/oned/ODUPCEReader.h \
    $$PWD/zxing-cpp/core/src/oned/ODUPCEWriter.h \
    $$PWD/zxing-cpp/core/src/oned/ODWriterHelper.h \
    $$PWD/zxing-cpp/core/src/oned/rss/ODRSSDataCharacter.h \
    $$PWD/zxing-cpp/core/src/oned/rss/ODRSSExpandedBinaryDecoder.h \
    $$PWD/zxing-cpp/core/src/oned/rss/ODRSSExpandedPair.h \
    $$PWD/zxing-cpp/core/src/oned/rss/ODRSSExpandedRow.h \
    $$PWD/zxing-cpp/core/src/oned/rss/ODRSSFieldParser.h \
    $$PWD/zxing-cpp/core/src/oned/rss/ODRSSFinderPattern.h \
    $$PWD/zxing-cpp/core/src/oned/rss/ODRSSGenericAppIdDecoder.h \
    $$PWD/zxing-cpp/core/src/oned/rss/ODRSSPair.h \
    $$PWD/zxing-cpp/core/src/oned/rss/ODRSSReaderHelper.h \
    $$PWD/zxing-cpp/core/src/pdf417/PDFBarcodeMetadata.h \
    $$PWD/zxing-cpp/core/src/pdf417/PDFBarcodeValue.h \
    $$PWD/zxing-cpp/core/src/pdf417/PDFBoundingBox.h \
    $$PWD/zxing-cpp/core/src/pdf417/PDFCodeword.h \
    $$PWD/zxing-cpp/core/src/pdf417/PDFCodewordDecoder.h \
    $$PWD/zxing-cpp/core/src/pdf417/PDFCompaction.h \
    $$PWD/zxing-cpp/core/src/pdf417/PDFDecodedBitStreamParser.h \
    $$PWD/zxing-cpp/core/src/pdf417/PDFDecoderResultExtra.h \
    $$PWD/zxing-cpp/core/src/pdf417/PDFDetectionResult.h \
    $$PWD/zxing-cpp/core/src/pdf417/PDFDetectionResultColumn.h \
    $$PWD/zxing-cpp/core/src/pdf417/PDFDetector.h \
    $$PWD/zxing-cpp/core/src/pdf417/PDFEncoder.h \
    $$PWD/zxing-cpp/core/src/pdf417/PDFHighLevelEncoder.h \
    $$PWD/zxing-cpp/core/src/pdf417/PDFModulusGF.h \
    $$PWD/zxing-cpp/core/src/pdf417/PDFModulusPoly.h \
    $$PWD/zxing-cpp/core/src/pdf417/PDFReader.h \
    $$PWD/zxing-cpp/core/src/pdf417/PDFScanningDecoder.h \
    $$PWD/zxing-cpp/core/src/pdf417/PDFWriter.h \
    $$PWD/zxing-cpp/core/src/qrcode/QRAlignmentPattern.h \
    $$PWD/zxing-cpp/core/src/qrcode/QRAlignmentPatternFinder.h \
    $$PWD/zxing-cpp/core/src/qrcode/QRBitMatrixParser.h \
    $$PWD/zxing-cpp/core/src/qrcode/QRCodecMode.h \
    $$PWD/zxing-cpp/core/src/qrcode/QRDataBlock.h \
    $$PWD/zxing-cpp/core/src/qrcode/QRDataMask.h \
    $$PWD/zxing-cpp/core/src/qrcode/QRDecoder.h \
    $$PWD/zxing-cpp/core/src/qrcode/QRDecoderMetadata.h \
    $$PWD/zxing-cpp/core/src/qrcode/QRDetector.h \
    $$PWD/zxing-cpp/core/src/qrcode/QRECB.h \
    $$PWD/zxing-cpp/core/src/qrcode/QREncodeResult.h \
    $$PWD/zxing-cpp/core/src/qrcode/QREncoder.h \
    $$PWD/zxing-cpp/core/src/qrcode/QRErrorCorrectionLevel.h \
    $$PWD/zxing-cpp/core/src/qrcode/QRFinderPattern.h \
    $$PWD/zxing-cpp/core/src/qrcode/QRFinderPatternFinder.h \
    $$PWD/zxing-cpp/core/src/qrcode/QRFinderPatternInfo.h \
    $$PWD/zxing-cpp/core/src/qrcode/QRFormatInformation.h \
    $$PWD/zxing-cpp/core/src/qrcode/QRMaskUtil.h \
    $$PWD/zxing-cpp/core/src/qrcode/QRMatrixUtil.h \
    $$PWD/zxing-cpp/core/src/qrcode/QRReader.h \
    $$PWD/zxing-cpp/core/src/qrcode/QRVersion.h \
    $$PWD/zxing-cpp/core/src/qrcode/QRWriter.h \
    $$PWD/zxing-cpp/core/src/textcodec/Big5MapTable.h \
    $$PWD/zxing-cpp/core/src/textcodec/Big5TextDecoder.h \
    $$PWD/zxing-cpp/core/src/textcodec/Big5TextEncoder.h \
    $$PWD/zxing-cpp/core/src/textcodec/GBTextDecoder.h \
    $$PWD/zxing-cpp/core/src/textcodec/GBTextEncoder.h \
    $$PWD/zxing-cpp/core/src/textcodec/JPTextDecoder.h \
    $$PWD/zxing-cpp/core/src/textcodec/JPTextEncoder.h \
    $$PWD/zxing-cpp/core/src/textcodec/KRHangulMapping.h \
    $$PWD/zxing-cpp/core/src/textcodec/KRTextDecoder.h \
    $$PWD/zxing-cpp/core/src/textcodec/KRTextEncoder.h

SOURCES += \
    $$PWD/SBarcodeDecoder.cpp \
    $$PWD/SBarcodeFilter.cpp \
    $$PWD/SBarcodeGenerator.cpp \
    $$PWD/zxing-cpp/core/src/BarcodeFormat.cpp \
    $$PWD/zxing-cpp/core/src/BitArray.cpp \
    $$PWD/zxing-cpp/core/src/BitMatrix.cpp \
    $$PWD/zxing-cpp/core/src/BitMatrixIO.cpp \
    $$PWD/zxing-cpp/core/src/BitSource.cpp \
    $$PWD/zxing-cpp/core/src/CharacterSetECI.cpp \
    $$PWD/zxing-cpp/core/src/DecodeHints.cpp \
    $$PWD/zxing-cpp/core/src/DecodeStatus.cpp \
    $$PWD/zxing-cpp/core/src/GenericGF.cpp \
    $$PWD/zxing-cpp/core/src/GenericGFPoly.cpp \
    $$PWD/zxing-cpp/core/src/GenericLuminanceSource.cpp \
    $$PWD/zxing-cpp/core/src/GlobalHistogramBinarizer.cpp \
    $$PWD/zxing-cpp/core/src/GridSampler.cpp \
    $$PWD/zxing-cpp/core/src/HybridBinarizer.cpp \
    $$PWD/zxing-cpp/core/src/LuminanceSource.cpp \
    $$PWD/zxing-cpp/core/src/MultiFormatReader.cpp \
    $$PWD/zxing-cpp/core/src/MultiFormatWriter.cpp \
    $$PWD/zxing-cpp/core/src/PerspectiveTransform.cpp \
    $$PWD/zxing-cpp/core/src/ReadBarcode.cpp \
    $$PWD/zxing-cpp/core/src/ReedSolomonDecoder.cpp \
    $$PWD/zxing-cpp/core/src/ReedSolomonEncoder.cpp \
    $$PWD/zxing-cpp/core/src/Result.cpp \
    $$PWD/zxing-cpp/core/src/ResultMetadata.cpp \
    $$PWD/zxing-cpp/core/src/ResultPoint.cpp \
    $$PWD/zxing-cpp/core/src/TextDecoder.cpp \
    $$PWD/zxing-cpp/core/src/TextEncoder.cpp \
    $$PWD/zxing-cpp/core/src/TextUtfEncoding.cpp \
    $$PWD/zxing-cpp/core/src/WhiteRectDetector.cpp \
    $$PWD/zxing-cpp/core/src/ZXBigInteger.cpp \
    $$PWD/zxing-cpp/core/src/aztec/AZDecoder.cpp \
    $$PWD/zxing-cpp/core/src/aztec/AZDetector.cpp \
    $$PWD/zxing-cpp/core/src/aztec/AZEncoder.cpp \
    $$PWD/zxing-cpp/core/src/aztec/AZHighLevelEncoder.cpp \
    $$PWD/zxing-cpp/core/src/aztec/AZReader.cpp \
    $$PWD/zxing-cpp/core/src/aztec/AZToken.cpp \
    $$PWD/zxing-cpp/core/src/aztec/AZWriter.cpp \
    $$PWD/zxing-cpp/core/src/datamatrix/DMBitMatrixParser.cpp \
    $$PWD/zxing-cpp/core/src/datamatrix/DMDataBlock.cpp \
    $$PWD/zxing-cpp/core/src/datamatrix/DMDecoder.cpp \
    $$PWD/zxing-cpp/core/src/datamatrix/DMDefaultPlacement.cpp \
    $$PWD/zxing-cpp/core/src/datamatrix/DMDetector.cpp \
    $$PWD/zxing-cpp/core/src/datamatrix/DMECEncoder.cpp \
    $$PWD/zxing-cpp/core/src/datamatrix/DMHighLevelEncoder.cpp \
    $$PWD/zxing-cpp/core/src/datamatrix/DMReader.cpp \
    $$PWD/zxing-cpp/core/src/datamatrix/DMSymbolInfo.cpp \
    $$PWD/zxing-cpp/core/src/datamatrix/DMVersion.cpp \
    $$PWD/zxing-cpp/core/src/datamatrix/DMWriter.cpp \
    $$PWD/zxing-cpp/core/src/maxicode/MCBitMatrixParser.cpp \
    $$PWD/zxing-cpp/core/src/maxicode/MCDecoder.cpp \
    $$PWD/zxing-cpp/core/src/maxicode/MCReader.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODCodabarReader.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODCodabarWriter.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODCode128Patterns.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODCode128Reader.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODCode128Writer.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODCode39Reader.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODCode39Writer.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODCode93Reader.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODCode93Writer.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODEAN13Reader.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODEAN13Writer.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODEAN8Reader.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODEAN8Writer.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODEANManufacturerOrgSupport.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODITFReader.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODITFWriter.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODMultiUPCEANReader.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODRSS14Reader.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODRSSExpandedReader.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODReader.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODRowReader.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODUPCAReader.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODUPCAWriter.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODUPCEANCommon.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODUPCEANExtensionSupport.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODUPCEANReader.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODUPCEReader.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODUPCEWriter.cpp \
    $$PWD/zxing-cpp/core/src/oned/ODWriterHelper.cpp \
    $$PWD/zxing-cpp/core/src/oned/rss/ODRSSExpandedBinaryDecoder.cpp \
    $$PWD/zxing-cpp/core/src/oned/rss/ODRSSFieldParser.cpp \
    $$PWD/zxing-cpp/core/src/oned/rss/ODRSSGenericAppIdDecoder.cpp \
    $$PWD/zxing-cpp/core/src/oned/rss/ODRSSReaderHelper.cpp \
    $$PWD/zxing-cpp/core/src/pdf417/PDFBarcodeValue.cpp \
    $$PWD/zxing-cpp/core/src/pdf417/PDFBoundingBox.cpp \
    $$PWD/zxing-cpp/core/src/pdf417/PDFCodewordDecoder.cpp \
    $$PWD/zxing-cpp/core/src/pdf417/PDFDecodedBitStreamParser.cpp \
    $$PWD/zxing-cpp/core/src/pdf417/PDFDetectionResult.cpp \
    $$PWD/zxing-cpp/core/src/pdf417/PDFDetectionResultColumn.cpp \
    $$PWD/zxing-cpp/core/src/pdf417/PDFDetector.cpp \
    $$PWD/zxing-cpp/core/src/pdf417/PDFEncoder.cpp \
    $$PWD/zxing-cpp/core/src/pdf417/PDFHighLevelEncoder.cpp \
    $$PWD/zxing-cpp/core/src/pdf417/PDFModulusGF.cpp \
    $$PWD/zxing-cpp/core/src/pdf417/PDFModulusPoly.cpp \
    $$PWD/zxing-cpp/core/src/pdf417/PDFReader.cpp \
    $$PWD/zxing-cpp/core/src/pdf417/PDFScanningDecoder.cpp \
    $$PWD/zxing-cpp/core/src/pdf417/PDFWriter.cpp \
    $$PWD/zxing-cpp/core/src/qrcode/QRAlignmentPattern.cpp \
    $$PWD/zxing-cpp/core/src/qrcode/QRAlignmentPatternFinder.cpp \
    $$PWD/zxing-cpp/core/src/qrcode/QRBitMatrixParser.cpp \
    $$PWD/zxing-cpp/core/src/qrcode/QRCodecMode.cpp \
    $$PWD/zxing-cpp/core/src/qrcode/QRDataBlock.cpp \
    $$PWD/zxing-cpp/core/src/qrcode/QRDataMask.cpp \
    $$PWD/zxing-cpp/core/src/qrcode/QRDecoder.cpp \
    $$PWD/zxing-cpp/core/src/qrcode/QRDetector.cpp \
    $$PWD/zxing-cpp/core/src/qrcode/QREncoder.cpp \
    $$PWD/zxing-cpp/core/src/qrcode/QRErrorCorrectionLevel.cpp \
    $$PWD/zxing-cpp/core/src/qrcode/QRFinderPattern.cpp \
    $$PWD/zxing-cpp/core/src/qrcode/QRFinderPatternFinder.cpp \
    $$PWD/zxing-cpp/core/src/qrcode/QRFormatInformation.cpp \
    $$PWD/zxing-cpp/core/src/qrcode/QRMaskUtil.cpp \
    $$PWD/zxing-cpp/core/src/qrcode/QRMatrixUtil.cpp \
    $$PWD/zxing-cpp/core/src/qrcode/QRReader.cpp \
    $$PWD/zxing-cpp/core/src/qrcode/QRVersion.cpp \
    $$PWD/zxing-cpp/core/src/qrcode/QRWriter.cpp \
    $$PWD/zxing-cpp/core/src/textcodec/Big5MapTable.cpp \
    $$PWD/zxing-cpp/core/src/textcodec/Big5TextDecoder.cpp \
    $$PWD/zxing-cpp/core/src/textcodec/Big5TextEncoder.cpp \
    $$PWD/zxing-cpp/core/src/textcodec/GBTextDecoder.cpp \
    $$PWD/zxing-cpp/core/src/textcodec/GBTextEncoder.cpp \
    $$PWD/zxing-cpp/core/src/textcodec/JPTextDecoder.cpp \
    $$PWD/zxing-cpp/core/src/textcodec/JPTextEncoder.cpp \
    $$PWD/zxing-cpp/core/src/textcodec/KRHangulMapping.cpp \
    $$PWD/zxing-cpp/core/src/textcodec/KRTextDecoder.cpp \
    $$PWD/zxing-cpp/core/src/textcodec/KRTextEncoder.cpp
