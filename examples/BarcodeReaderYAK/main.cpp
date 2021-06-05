#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "SBarcodeFilter.h"
#include <QMetaObject>
#include "deviceid.h"
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    // If you use Qt version older than 5.15 you need to manually register SBarcodeFilter
#if (QT_VERSION < QT_VERSION_CHECK(5, 15, 0))
        qmlRegisterType<SBarcodeFilter>("com.scythestudio.scodes", 1, 0, "SBarcodeFilter");
#endif

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/qml/ScannerPage.qml")));
    if (engine.rootObjects().isEmpty()) {
        return -1;
    }


    //qml to cpp
//    auto root = engine.rootObjects();//ApplicationWindow
//    qDebug()<<"root"<<root;
//    auto labelQml = root.at(0)->findChild<QObject*>("labelCpp");
////    root.at(3)
//    qDebug()<<"labelQml"<<labelQml;
//    QVariant ret;
//    QMetaObject::invokeMethod(labelQml,"getText",Q_RETURN_ARG(QVariant,ret));
//    qDebug()<<"ret"<<ret.toString();

    return app.exec();
}
