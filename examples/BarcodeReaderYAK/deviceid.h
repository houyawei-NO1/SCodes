#ifndef DEVICEID_H
#define DEVICEID_H
#include <QDebug>
#include <QObject>

class deviceid : public QObject
{
public:
    deviceid();
    Q_INVOKABLE void printInfo();
private:
    QString name;
    qint16 age;
};

#endif // DEVICEID_H
