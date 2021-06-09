#include "SBarcodeFilter.h"

#include <QImage>
#include <QtMultimedia/qvideoframe.h>
#include <QVideoFilterRunnable>

#include "SBarcodeDecoder.h"

void processImage(SBarcodeDecoder *decoder, const QImage &image)
{
  decoder->process(image);
};

class SBarcodeFilterRunnable : public QVideoFilterRunnable
{

public:

    SBarcodeFilterRunnable(SBarcodeFilter *filter)
        : _filter{filter}
    {
    }

    QVideoFrame run(QVideoFrame *input,
                    const QVideoSurfaceFormat &surfaceFormat,
                    QVideoFilterRunnable::RunFlags flags) override
    {
        Q_UNUSED(surfaceFormat);
        Q_UNUSED(flags);

        if (_filter->getDecoder()->isDecoding()) {
            return *input;
        }

        if (_filter->getImageFuture().isRunning()) {
            return *input;
        }

        const QImage croppedCapturedImage = SBarcodeDecoder::videoFrameToImage(*input, _filter->captureRect().toRect());
        _filter->getImageFuture() = QtConcurrent::run(processImage, _filter->getDecoder(), croppedCapturedImage);
        return *input;
    }

private:
    SBarcodeFilter *_filter;
};


SBarcodeFilter::SBarcodeFilter(QObject *parent)
    : QAbstractVideoFilter{parent}
    , _decoder{new SBarcodeDecoder}
{
    connect(_decoder, &SBarcodeDecoder::capturedChanged, this, &SBarcodeFilter::setCaptured);

    connect(this, &QAbstractVideoFilter::activeChanged, this, [this]() {
        if (this->isActive()) {
            this->clean();
        }
    });
}

QVideoFilterRunnable *SBarcodeFilter::createFilterRunnable()
{
    return new SBarcodeFilterRunnable(this);
}

QString SBarcodeFilter::captured() const
{
    return _captured;
}

void SBarcodeFilter::setCaptured(const QString &captured)
{
    if (captured == _captured) {
        return;
    }

    _captured = captured;
    if(_captured.indexOf("MAC")>-1)
        {
        qDebug()<<_captured;
        _captured.remove(":");
        qDebug()<<_captured;
        _captured = _captured.mid(_captured.indexOf("MAC")+3,12);
        qDebug()<<_captured;
        MAC = _captured;
        CheckDeviceID(_captured);
//        _captured = finishedSlot();
          }

    else
        {
        MAC = "";
        qDebug()<<"未找到MAC"<<_captured;
        _captured="\t未找到MAC\n请扫描盒子背部二维码";
        emit capturedChanged(_captured);
        }
//    emit capturedChanged(_captured);
}

void SBarcodeFilter::clean()
{
    _captured = "";
    MAC = "";
    _decoder->clean();
}

QRectF SBarcodeFilter::captureRect() const
{
    return _captureRect;
}

void SBarcodeFilter::setCaptureRect(const QRectF &captureRect)
{
    if (captureRect == _captureRect) {
        return;
    }

    _captureRect = captureRect;
    emit captureRectChanged(_captureRect);
}

SBarcodeDecoder *SBarcodeFilter::getDecoder() const
{
    return _decoder;
}

QFuture<void> SBarcodeFilter::getImageFuture() const
{
    return _imageFuture;
}

void SBarcodeFilter::CheckDeviceID(const QString &strmac)
{

    QString url("http://h.hibao789.com/sleep/public/index.php/device/monitoringdata/getDeviceQRcode");
    const QUrl aurl(url);
    QNetworkRequest qnr(aurl);
    qnr.setRawHeader("Content-Type", "application/json;charset=utf8");

    QString md5Str = QCryptographicHash::hash(strmac.toLatin1(),QCryptographicHash::Md5).toHex();

    QString strData;
    QString strCPU = md5Str.mid(0,12);
    QString strMAC = md5Str.mid(20,12);
    qDebug()<<"strCPU"<<strCPU;
    qDebug()<<"strMAc"<<strMAC;
    strData.append(strCPU);
    strData.append(strMAC);
    QString pwd = strCPU.mid(1, 3) + strMAC.mid(1,3);
    QString md5;
    QByteArray ba, bb;
    QCryptographicHash md(QCryptographicHash::Md5);
    ba.append(pwd);
    md.addData(ba);
    bb = md.result();
    md5.append(bb.toHex());
    strData.append(md5);

    QJsonObject obj;
    obj.insert("cpuId", strCPU);
    obj.insert("mac", strMAC);
    obj.insert("key", md5);
    QJsonDocument jsonDoc(obj);

    QString str(jsonDoc.toJson());

    qnam = new QNetworkAccessManager();
       QObject::connect(qnam, SIGNAL(finished(QNetworkReply*)),
           this, SLOT(finishedSlot(QNetworkReply*)));

    QNetworkReply *reply = qnam->post(qnr, jsonDoc.toJson());//*updata*CheckDeviceID:    cpuId,mac,key
       qDebug()<<jsonDoc;
    if (reply->isFinished())
        reply->deleteLater();
}

void SBarcodeFilter::finishedSlot(QNetworkReply *reply)
{
    if (reply->error() == QNetworkReply::NoError)
         {
             QByteArray bytes = reply->readAll();
             QJsonParseError e;
             QJsonDocument jsonDoc = QJsonDocument::fromJson(bytes, &e);
             if (e.error == QJsonParseError::NoError && !jsonDoc.isNull())
             {

                 if((!jsonDoc.isNull()) || (!jsonDoc.isEmpty()))
                 {

                     if(jsonDoc.isObject())

                     {
                         QJsonObject obj = jsonDoc.object();
                         if(obj.contains(QString("picStream")))
                         {
 //                            qDebug() << "in picStream...";

                             QString m_strDeviceID = obj.value("deviceId").toString();
                             QString picStream = obj.value("picStream").toString();

//                             QString  m_savePath = "/sdcard/Android/data/hyw.houyawei.box";

//                             if (QFileInfo::exists(m_savePath))
//                             {
//                             qDebug()<<"exists_/sdcard/Android/data/hyw.houyawei.box";
//                             }

//                             else
//                             {
//                             QDir currDir;
//                             currDir.mkdir(m_savePath);
//                             }

                            QString path = QStandardPaths::writableLocation(QStandardPaths::PicturesLocation);
                             QByteArray tmpBytes = picStream.toLatin1();
                             QImage img;
                             img.loadFromData(QByteArray::fromBase64(tmpBytes));
                             path.append("/qr.jpg");
                              qDebug()<<"qr.jpg"<<path;
                             bool suc = img.save(path);
                             qDebug()<<"suc"<<suc;
                             _captured =  MAC +"/"+ m_strDeviceID;
                             qDebug()<<"finishedSlot"<<_captured;
                              emit capturedChanged(_captured);


                         }

                  }
             }

         }
         else
         {
             qDebug() << "finishedSlot errors here";
             qDebug( "found error .... code: %d\n", (int)reply->error());
             qDebug(qPrintable(reply->errorString()));
         }
         reply->deleteLater();

}}
